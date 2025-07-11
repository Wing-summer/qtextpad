[Setup]
OutputDir=.
OutputBaseFilename=qtextpad-x64
AppName=QTextPad
AppVersion=1.13-pre
AppCopyright=Copyright © 2020-2025 Michael Hansen
AppId={{7DDD3218-1920-4278-9C33-E3AF37F3E7A4}
AppPublisher=Michael Hansen
AppPublisherURL=https://github.com/zrax/qtextpad
AppSupportURL=https://github.com/zrax/qtextpad/issues
AppUpdatesURL=https://github.com/zrax/qtextpad/releases
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
DefaultDirName={commonpf}\QTextPad
DefaultGroupName=QTextPad
UninstallDisplayIcon={app}\qtextpad.exe
WizardStyle=modern

[Files]
Source: qtextpad-x64\vc_redist.x64.exe; DestDir: {tmp}; Flags: deleteafterinstall ignoreversion
Source: qtextpad-x64\COPYING; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\qtextpad.exe; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\KF6SyntaxHighlighting.dll; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\Qt6Core.dll; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\Qt6Gui.dll; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\Qt6Network.dll; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\Qt6PrintSupport.dll; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\Qt6Svg.dll; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\Qt6Widgets.dll; DestDir: {app}; Flags: ignoreversion
Source: qtextpad-x64\generic\qtuiotouchplugin.dll; DestDir: {app}\generic; Flags: ignoreversion
Source: qtextpad-x64\iconengines\qsvgicon.dll; DestDir: {app}\iconengines; Flags: ignoreversion
Source: qtextpad-x64\imageformats\qgif.dll; DestDir: {app}\imageformats; Flags: ignoreversion
Source: qtextpad-x64\imageformats\qico.dll; DestDir: {app}\imageformats; Flags: ignoreversion
Source: qtextpad-x64\imageformats\qjpeg.dll; DestDir: {app}\imageformats; Flags: ignoreversion
Source: qtextpad-x64\imageformats\qsvg.dll; DestDir: {app}\imageformats; Flags: ignoreversion
Source: qtextpad-x64\networkinformation\qnetworklistmanager.dll; DestDir: {app}\networkinformation; Flags: ignoreversion
Source: qtextpad-x64\platforms\qwindows.dll; DestDir: {app}\platforms; Flags: ignoreversion
Source: qtextpad-x64\styles\qmodernwindowsstyle.dll; DestDir: {app}\styles; Flags: ignoreversion
Source: qtextpad-x64\tls\qcertonlybackend.dll; DestDir: {app}\tls; Flags: ignoreversion
Source: qtextpad-x64\tls\qschannelbackend.dll; DestDir: {app}\tls; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_ar.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_bg.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_ca.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_cs.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_da.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_de.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_en.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_es.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_fa.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_fi.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_fr.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_gd.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_he.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_hr.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_hu.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_it.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_ja.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_ka.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_ko.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_lv.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_nl.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_nn.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_pl.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_pt_BR.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_ru.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_sk.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_tr.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_uk.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_zh_CN.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\translations\qt_zh_TW.qm; DestDir: {app}\translations; Flags: ignoreversion
Source: qtextpad-x64\data\locale\af\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\af\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ar\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ar\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ast\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ar\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\az\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\az\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\be\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\be\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\bg\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\bg\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\bn\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\bn\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\br\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\br\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\bs\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\bs\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ca\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ca\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ca@valencia\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ca@valencia\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\cs\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\cs\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\cy\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\cy\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\da\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\da\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\de\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\de\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\el\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\el\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\en_GB\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\en_GB\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\eo\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\eo\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\es\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\es\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\et\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\et\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\eu\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\eu\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\fa\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\fa\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\fi\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\fi\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\fr\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\fr\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\fy\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\fy\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ga\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ga\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\gl\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\gl\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\gu\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\gu\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\he\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\he\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\hi\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\hi\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\hr\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\hr\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\hsb\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\hsb\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\hu\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\hu\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ia\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ia\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\id\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\id\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\is\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\is\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\it\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\it\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ja\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ja\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ka\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ka\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\kk\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\kk\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\km\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\km\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ko\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ko\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ku\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ku\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\lb\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\lb\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\lt\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\lt\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\lv\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\lv\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\mai\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\mai\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\mk\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\mk\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ml\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ml\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\mr\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\mr\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ms\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ms\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\nb\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\nb\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\nds\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\nds\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ne\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ne\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\nl\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\nl\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\nn\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\nn\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\oc\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\oc\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\pa\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\pa\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\pl\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\pl\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\pt\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\pt\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\pt_BR\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\pt_BR\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ro\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ro\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ru\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ru\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\se\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\se\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\si\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\si\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\sk\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\sk\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\sl\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\sl\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\sq\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\sq\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\sr\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\sr\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\sr@ijekavian\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\sr@ijekavian\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\sr@ijekavianlatin\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\sr@ijekavianlatin\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\sr@latin\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\sr@latin\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\sv\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\sv\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ta\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ta\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\tg\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\tg\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\th\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\th\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\tr\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\tr\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\ug\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\ug\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\uk\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\uk\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\uz\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\uz\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\uz@cyrillic\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\uz@cyrillic\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\vi\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\vi\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\wa\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\wa\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\xh\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\xh\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\zh_CN\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\zh_CN\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\locale\zh_TW\LC_MESSAGES\syntaxhighlighting6_qt.qm; DestDir: {app}\data\locale\zh_TW\LC_MESSAGES; Flags: ignoreversion
Source: qtextpad-x64\data\qlogging-categories6\ksyntaxhighlighting.categories; DestDir: {app}\data\qlogging-categories6; Flags: ignoreversion
Source: qtextpad-x64\data\qlogging-categories6\ksyntaxhighlighting.renamecategories; DestDir: {app}\data\qlogging-categories6; Flags: ignoreversion

[Run]
Filename: {tmp}\vc_redist.x64.exe; Parameters: /q /norestart

[InstallDelete]
Name: {app}\magic.mgc; Type: files
Name: {app}\libcrypto-1_1-x64.dll; Type: files
Name: {app}\libgcc_s_seh-1.dll; Type: files
Name: {app}\libiconv-2.dll; Type: files
Name: {app}\libintl-8.dll; Type: files
Name: {app}\libKF5SyntaxHighlighting.dll; Type: files
Name: {app}\libmagic-1.dll; Type: files
Name: {app}\libssl-1_1-x64.dll; Type: files
Name: {app}\libstdc++-6.dll; Type: files
Name: {app}\libsystre-0.dll; Type: files
Name: {app}\libtre-5.dll; Type: files
Name: {app}\libwinpthread-1.dll; Type: files
Name: {app}\Qt5Core.dll; Type: files
Name: {app}\Qt5Gui.dll; Type: files
Name: {app}\Qt5Network.dll; Type: files
Name: {app}\Qt5PrintSupport.dll; Type: files
Name: {app}\Qt5Svg.dll; Type: files
Name: {app}\Qt5Widgets.dll; Type: files
Name: {app}\KF5SyntaxHighlighting.dll; Type: files
Name: {app}\bearer\qgenericbearer.dll; Type: files
Name: {app}\bearer; Type: dirifempty
Name: {app}\imageformats\qicns.dll; Type: files
Name: {app}\imageformats\qtga.dll; Type: files
Name: {app}\imageformats\qtiff.dll; Type: files
Name: {app}\imageformats\qwbmp.dll; Type: files
Name: {app}\imageformats\qwebp.dll; Type: files
Name: {app}\printsupport\windowsprintersupport.dll; Type: files
Name: {app}\printsupport; Type: dirifempty
Name: {app}\tls\qopensslbackend.dll; Type: files
Name: {app}\data\locale\af\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ar\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ast\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\az\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\be\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\bg\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\bn\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\br\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\bs\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ca\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ca@valencia\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\cs\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\cy\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\da\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\de\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\el\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\en_GB\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\eo\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\es\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\et\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\eu\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\fa\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\fi\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\fr\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\fy\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ga\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\gl\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\gu\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\he\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\hi\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\hr\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\hsb\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\hu\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ia\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\id\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\is\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\it\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ja\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ka\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\kk\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\km\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ko\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ku\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\lb\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\lt\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\lv\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\mai\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\mk\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ml\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\mr\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ms\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\nb\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\nds\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ne\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\nl\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\nn\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\oc\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\pa\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\pl\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\pt\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\pt_BR\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ro\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ru\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\se\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\si\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\sk\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\sl\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\sq\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\sr\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\sr@ijekavian\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\sr@ijekavianlatin\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\sr@latin\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\sv\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ta\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\tg\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\th\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\tr\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\ug\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\uk\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\uz\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\uz@cyrillic\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\vi\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\wa\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\xh\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\zh_CN\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\locale\zh_TW\LC_MESSAGES\syntaxhighlighting5_qt.qm; Type: files
Name: {app}\data\qlogging-categories5\ksyntaxhighlighting.categories; Type: files
Name: {app}\data\qlogging-categories5\org_kde_ksyntaxhighlighting.categories; Type: files
Name: {app}\data\qlogging-categories5; Type: dirifempty

[UninstallDelete]
Name: {app}; Type: dirifempty

[Icons]
Name: {group}\QTextPad; Filename: {app}\qtextpad.exe; IconIndex: 0
