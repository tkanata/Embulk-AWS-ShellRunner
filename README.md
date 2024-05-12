# Embulk-AWS-ShellRunner
AWS上でシェルスクリプトを用いてEmbulkを実行できることを確認するためのリポジトリ


# Dockerfileのbuild
`docker build . -t amazon-linux-embulk`

# buildしたimageをcontainerとして実行
`docker run amazon-linux-embulk`

# containerに入る
`docker run --rm -t -i amazon-linux-embulk /bin/bash`
