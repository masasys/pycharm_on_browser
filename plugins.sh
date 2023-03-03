cd /tmp
# install plugins
PRODUCT=pycharm
install_plugin(){
wget -qO-  https://plugins.jetbrains.com/files/$(curl https://plugins.jetbrains.com/api/plugins/$1/updates | jq -r '.[0].file') | bsdtar -xvf- -C /opt/${PRODUCT}/plugins
}
install_plugin 7495
install_plugin 10044
install_plugin 10037
install_plugin 17718
install_plugin 9746
install_plugin 13308
install_plugin 12124
install_plugin 10837
# 以下は動作しなかった。
# PRODUCT=pycharm
# /opt/${PRODUCT}/bin/${PRODUCT}.sh installPlugins "mobi.hsz.idea.gitignore" "com.github.copilot" "net.seesharpsoft.intellij.plugins.csv" "com.intellij.ideolog" "indent-rainbow.indent-rainbow" "com.mallowigi.idea" "ru.meanmail.plugin.requirements"