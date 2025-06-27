#!/bin/bash
#####################################################################
# システム名   : xxxxxシステム
# 処理名       : 共通処理
# スクリプト名 : common_function.sh
# 版数         : 1.0
#####################################################################
# 変更履歴     : 1.0    新規作成   李
#####################################################################

# ----- グローバル変数定義 ---------------------------------------------#
date=$(date +%Y-%m-%d)
exec_user=$(whoami)
inf001="[INFO] script started"
inf002="[INFO] user check passed on ${exec_user}"
inf003="[INFO] script completed"
inf004="[INFO] host check passed on ${HOSTNAME}"
err001="[ERROR] script end with error"
err002="[ERROR] log split error"
err003="[ERROR] usercheck unpassed on ${exec_user}"
err004="[ERROR] host check unpassed on ${HOSTNAME}"
err005="[ERROR] log gzip error"

# ---- 関数宣言 ------------------------------------------------------#

# ログ出力関数
function Logger() {
  # ログメッセージ
  message="$1"

  # 呼び出し元スクリプト名
  script_name=$(basename "$0")

  # 呼び出し元スクリプトのログ出力ファイル（$HOME や /var/log/script/... など適宜修正）
  script_log_file="/var/log/script/infra/${script_name}.${date}"

  # 時刻取得
  time=$(date +"[%Y-%m-%d %H:%M:%S]")

  # ログ出力
  echo "$time" "$HOSTNAME" "$message" >> "$script_log_file"
}

# ユーザーチェック関数
function UserCheck() {
  if [ "$exec_user" == "root" ]; then
    Logger "$inf002"
  else
    Logger "$err003"
    exit 40
  fi
}

# ホストチェック関数
function HostCheck() {
  if [[ ${HOSTNAME} =~ my-test-host[1-5] ]]; then
    Logger "$inf004"
  else
    Logger "$err004"
    exit 50
  fi
}
