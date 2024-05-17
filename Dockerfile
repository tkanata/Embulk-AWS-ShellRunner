FROM amazonlinux:2

RUN yum -y install java-1.8.0-openjdk
RUN yum -y install jq
# psqlをインストールします
RUN yum -y install postgresql

# localesパッケージをインストール
RUN yum install -y glibc-langpack-ja
# 環境変数を設定してデフォルトのロケールをja_JP.UTF-8に設定
ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"

# タイムゾーンの設定用環境変数
ENV TZ=Asia/Tokyo
# タイムゾーン情報を含むパッケージのインストール
RUN yum install -y tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    yum clean all

# Embulkのインストール
ARG embulk_version=0.11.0
COPY embulk.properties root/.embulk/
RUN curl --create-dirs -o root/.embulk/bin/embulk/embulk-${embulk_version}.jar -L "https://dl.embulk.org/embulk-${embulk_version}.jar"
RUN chmod +x root/.embulk/bin/embulk
RUN echo 'export PATH="/root/.embulk/bin:$PATH"' >> root/.bashrc
RUN source root/.bashrc 
RUN mkdir -p root/.embulk/bin/jruby && \
    curl -o root/.embulk/bin/jruby/jruby-complete-9.4.4.0.jar -L "https://repo1.maven.org/maven2/org/jruby/jruby-complete/9.4.4.0/jruby-complete-9.4.4.0.jar"
COPY . .
RUN rm -rf embulk.properties
ENV PATH="/root/.embulk/bin:${PATH}"
RUN mkdir result/

RUN chmod +x .
