# lindera-py

日本語の形態素解析エンジン[Lindera](https://github.com/lindera-morphology/lindera)のPython bindingです.

## Usage

このライブラリは現時点では実験的な実装のため、PyPIでは公開していません.

利用したい場合は自分の利用しているインタプリタ環境上で以下の手順でビルドしてください.

```shell
git clone https://github.com/lindera-morphology/lindera-py.git
maturin develop --release
```

[Maturin](https://github.com/PyO3/maturin)のインストール方法は[here](https://github.com/PyO3/maturin)を参照してください.

## Config file

設定ファイルの仕様は[Lindera]()と共有しています.
[こちら](https://github.com/lindera-morphology/lindera/blob/main/resources/lindera_ipadic_conf.json)を参考にして設定を行ってください．
