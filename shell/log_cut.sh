#!/bin/bash
#####################################################################
# システム名   : xxxxxシステム
# 処理名       : ログ分割処理
# スクリプト名 : log_cut.sh
# 版数         : 1.0
#####################################################################
# 変更履歴     : 1.0    新規作成   z
#####################################################################

# ----- グローバル変数定義 ---------------------------------------------#
script_infra_common=/opt/scripts/infra/lib/common_function.sh
log_list=/opt/scripts/infra/lib/log.list

# 共通関数読み込み
source ${script_infra_common}
if [ $? -ne 0 ]; then
  exit 99
fi

# 開始ログを出力
Logger "$inf001"

# 実行ユーザチェック
UserCheck

# 実行ホストチェック
HostCheck

# ログを分割
#loglist=( `cat ${log_list}` )
#for log_file in ${loglist[@]}
error_flag=0
while read log_file
do
  cp $log_file ${log_file}.$(date)
  error_flag=`expr $error_flag + $?`
  cp /dev/null $log_file
  error_flag=`expr $error_flag + $?`
done < ${log_list}

# 終了処理
if [ ${error_flag} -eq 0 ]; then
  Logger "$inf003"
  exit 0
else
  Logger "$err002"
  Logger "$err001"
  exit 70
fi
