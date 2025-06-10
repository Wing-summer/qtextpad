/* This file is part of QTextPad.
 *
 * QTextPad is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * QTextPad is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with QTextPad.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <QApplication>
#include <QTranslator>
#include <QLibraryInfo>
#include <QCommandLineParser>
#include <QIcon>
#include <QtGlobal>
#if QT_VERSION >= QT_VERSION_CHECK(6, 5, 0)
#include <QStyleHints>
#include <QStyle>
#endif

#include <KSyntaxHighlighting/Repository>
#include <KSyntaxHighlighting/Definition>
#include <KSyntaxHighlighting/DefinitionDownloader>

#include "qtextpadwindow.h"
#include "syntaxtextedit.h"
#include "appversion.h"

// Determine if the default icon theme includes the necessary icons for
// our toolbar.  If not, we need to use our own theme.
static bool checkDefaultIconTheme()
{
    const QString iconNames[] = {
        QStringLiteral("document-new"), QStringLiteral("document-open"),
        QStringLiteral("document-save"),
        QStringLiteral("edit-undo"), QStringLiteral("edit-redo"),
        QStringLiteral("edit-cut"), QStringLiteral("edit-copy"),
        QStringLiteral("edit-paste"),
        QStringLiteral("edit-find"), QStringLiteral("edit-find-replace"),
    };
    return std::all_of(std::begin(iconNames), std::end(iconNames),
                       qOverload<const QString&>(&QIcon::hasThemeIcon));
}

static void setDefaultIconTheme()
{
    static const bool defaultThemeOk = checkDefaultIconTheme();
    if (!defaultThemeOk) {
#if QT_VERSION >= QT_VERSION_CHECK(6, 5, 0)
        const bool darkTheme = (QGuiApplication::styleHints()->colorScheme() == Qt::ColorScheme::Dark);
#else
        const bool darkTheme = (QGuiApplication::palette().color(QPalette::Window).lightness() < 128);
#endif
        QIcon::setThemeName(darkTheme ? QStringLiteral("qtextpad-dark")
                                      : QStringLiteral("qtextpad"));
    }
}

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QCoreApplication::setApplicationName(QStringLiteral("qtextpad"));
    QCoreApplication::setApplicationVersion(QTextPadVersion::versionString());

#if QT_VERSION >= QT_VERSION_CHECK(6, 5, 0)
# ifdef Q_OS_WIN
    const QString defaultStyle = QApplication::style()->name();
    if (defaultStyle != QStringLiteral("windows11")) {
        if (QGuiApplication::styleHints()->colorScheme() == Qt::ColorScheme::Dark)
            QApplication::setStyle(QStringLiteral("fusion"));

        QObject::connect(QGuiApplication::styleHints(), &QStyleHints::colorSchemeChanged,
                         [defaultStyle](Qt::ColorScheme colorScheme) {
            if (colorScheme == Qt::ColorScheme::Dark)
                QApplication::setStyle(QStringLiteral("fusion"));
            else
                QApplication::setStyle(defaultStyle);
            setDefaultIconTheme();
        });
    } else {
# endif
        QObject::connect(QGuiApplication::styleHints(), &QStyleHints::colorSchemeChanged,
                         [](Qt::ColorScheme) { setDefaultIconTheme(); });
# ifdef Q_OS_WIN
    }
# endif
#endif

    QTranslator qtTranslator;
    if (qtTranslator.load(QLocale(), QStringLiteral("qt"), QStringLiteral("_"),
#if QT_VERSION >= QT_VERSION_CHECK(6, 0, 0)
                          QLibraryInfo::path(QLibraryInfo::TranslationsPath)
#else
                          QLibraryInfo::location(QLibraryInfo::TranslationsPath)
#endif
                          ))
    {
        QCoreApplication::installTranslator(&qtTranslator);
    }

    QTranslator appTranslator;
    if (appTranslator.load(QLocale(), QStringLiteral("qtextpad"), QStringLiteral("_")))
        QCoreApplication::installTranslator(&appTranslator);

    QCommandLineParser parser;
    parser.setApplicationDescription(
            QCoreApplication::translate("main", "qtextpad - The lightweight Qt code and text editor"));
    parser.addHelpOption();
    parser.addVersionOption();
    parser.addPositionalArgument(QStringLiteral("filename"),
            QCoreApplication::translate("main", "A document to open at startup"),
            QCoreApplication::translate("main", "[filename]"));
    parser.addPositionalArgument(QStringLiteral("line"),
            QCoreApplication::translate("main", "Move the cursor to the specified line"),
            QCoreApplication::translate("main", "[+line]"));

    const QCommandLineOption encodingOption(QStringList{QStringLiteral("e"), QStringLiteral("encoding")},
            QCoreApplication::translate("main", "Specify the encoding of the file (default: detect)"),
            QCoreApplication::translate("main", "encoding"));
    const QCommandLineOption syntaxOption(QStringList{QStringLiteral("S"), QStringLiteral("syntax")},
            QCoreApplication::translate("main", "Specify the syntax definition to use for the file (default: detect)"),
            QCoreApplication::translate("main", "syntax"));
    parser.addOption(encodingOption);
    parser.addOption(syntaxOption);

    const QCommandLineOption updateOption(QStringList{QStringLiteral("update-definitions")},
            QCoreApplication::translate("main", "Download updated syntax definitions from the internet and exit."));
    parser.addOption(updateOption);

    parser.process(app);

    if (parser.isSet(updateOption)) {
        // Handle this before any GUI objects are created
        KSyntaxHighlighting::Repository syntaxRepo;
        KSyntaxHighlighting::DefinitionDownloader downloader(&syntaxRepo);
        QObject::connect(&downloader, &KSyntaxHighlighting::DefinitionDownloader::informationMessage,
                         [](const QString &msg) {
            printf("%s\n", qPrintable(msg));
        });
        QObject::connect(&downloader, &KSyntaxHighlighting::DefinitionDownloader::done,
                         [] { QCoreApplication::exit(0); });
        downloader.start();
        return QApplication::exec();
    }

    setDefaultIconTheme();

    // TODO: Make a unique icon for QTextPad?
    // This one is borrowed from Oxygen
    QIcon appIcon;
    appIcon.addFile(QStringLiteral(":/icons/qtextpad-64.png"), QSize(64, 64));
    appIcon.addFile(QStringLiteral(":/icons/qtextpad-48.png"), QSize(48, 48));
    appIcon.addFile(QStringLiteral(":/icons/qtextpad-32.png"), QSize(32, 32));
    appIcon.addFile(QStringLiteral(":/icons/qtextpad-16.png"), QSize(16, 16));
    appIcon.addFile(QStringLiteral(":/icons/qtextpad-128.png"), QSize(128, 128));
    QApplication::setWindowIcon(appIcon);

    QTextPadWindow win;
    win.show();

    QString startupFile;
    int startupLine = -1;
    int startupCol = -1;
    const QStringList positionalArguments = parser.positionalArguments();
    for (const auto &arg : positionalArguments) {
        if (arg.startsWith(QLatin1Char('+'))) {
            bool ok;
            QList<QStringView> parts = QStringView(arg).split(QLatin1Char(','));
            startupLine = parts.at(0).mid(1).toInt(&ok, 0);
            if (!ok) {
                qWarning("%s", qPrintable(
                    QCoreApplication::translate("main", "Invalid startup line parameter: '%1'").arg(arg)));
                startupLine = -1;
            }
            if (parts.size() > 1) {
                startupCol = parts.at(1).toInt(&ok, 0);
                if (!ok) {
                    qWarning("%s", qPrintable(
                        QCoreApplication::translate("main", "Invalid startup line parameter: '%1'").arg(arg)));
                    startupCol = -1;
                }
            }
        } else {
            startupFile = arg;
        }
    }

    QString textEncoding;
    if (parser.isSet(encodingOption))
        textEncoding = parser.value(encodingOption);
    if (!startupFile.isEmpty() && win.loadDocumentFrom(startupFile, textEncoding)) {
        if (startupLine > 0)
            win.gotoLine(startupLine, startupCol);
        if (parser.isSet(syntaxOption)) {
            auto syntaxRepo = SyntaxTextEdit::syntaxRepo();
            auto syntaxDef = syntaxRepo->definitionForName(parser.value(syntaxOption));
            if (syntaxDef.isValid()) {
                win.setSyntax(syntaxDef);
            } else {
                qDebug("%s", qPrintable(
                    QCoreApplication::translate("main", "Invalid syntax definition specified: %1")
                            .arg(parser.value(syntaxOption))));
            }
        }
    }

    return QApplication::exec();
}
