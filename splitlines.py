#!/usr/bin/env python
import sys
import json

# この部分の詳細については以下を参照
# Conformance test #1 について (前振り編) - Qiita
# https://qiita.com/tm_tn/items/d49195d1c06143fee5c2
# このシリーズの
# Conformance test #1 (Docker & 出力パラメータ編) - Qiita
# https://qiita.com/tm_tn/items/a32064f01769bb05f45d#%E5%87%BA%E5%8A%9B%E3%82%AA%E3%83%96%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E3%81%AE%E8%AA%AC%E6%98%8E%E3%82%92%E3%82%AC%E3%83%B3%E7%84%A1%E8%A6%96%E3%81%99%E3%82%8B-cwloutputjson-%E3%81%AB%E9%96%A2%E3%81%99%E3%82%8B%E4%BB%95%E6%A7%98

if __name__ == '__main__':
    with open(sys.argv[1], 'r') as ifile:
        lines = [l.strip() for l in ifile.readlines()]
        with open('cwl.output.json', 'w') as ofile:
            json.dump({
                'output': lines,
            }, ofile)
