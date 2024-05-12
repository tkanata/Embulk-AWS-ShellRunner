# Embulk-AWS-ShellRunner
AWS上でシェルスクリプトを用いてEmbulkを実行できることを確認するためのリポジトリ


# Dockerfileのbuild
`docker build . -t amazon-linux-embulk`

# buildしたimageをcontainerとして実行
`docker run amazon-linux-embulk`
