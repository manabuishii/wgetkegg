
```console
$ sudo apt-get install build-essential python3-dev
```

```console
$ pip3 install cwltool cwl-runner cwltest
```



# やりたいこと

```
eco00010
eco00020
eco00030
```

こんなtxt fileをinputとして受け取る

base commandは

```console
$ wget -O ここに各行入れる.xml http://rest.kegg.jp/get/ここに各行入れる/kgml
```

outputは以下のようなファイル

```
eco00010.xml
eco00020.xml
eco00030.xml
```

# 本来は

JobConf ファイル（パラメータファイル）に、
idを列挙するというのが
よさそうである

```yaml
keggid_list:
  - eco00010
  - eco00020
  - eco00030
```

# 次の目標

- Rabix Composer で、同じワークフローを作る
- 少し書き直す

