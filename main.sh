#!/bin/sh

# echo '小問1'
# echo 'クロロメチルメチルエーテル' | sed 's/メ/エ/'
# echo '小問2'
# echo 'クロロエチルエチルエーテル' | sed 's/エチルエ/エチルメ/'
# echo '小問3'
# echo 'クロロメチルメチルエーテル' | sed 's/メチル/エチル/g'
# echo '小問4'
# echo 'クロロエチルエーテル' | sed 's/エチル/&&/'
# echo '小問5'
# echo 'クロロメチルエチルエーテル' | sed -E 's/(メチル)(エチル)/\2\1/'

# seq 5 | awk '/[24]/'
# seq 5 | awk '$1%2==0'
# seq 5 | awk '$1%2==0{printf("%s 偶数\n", $1)}'
# seq 5 | awk '$1%2==0{print $1, "偶数"}$1%2{print $1, "奇数"}'
# seq 5 | awk 'BEGIN{a=0}$1%2==0{print $1, "偶数"}$1%2{print $1, "奇数"}{a+=$1}END{print "合計", a}'

# 三項演算子も使える
# uniq -cで重複をカウントする前にはsortをする
# seq 5 | awk '{print $1%2 ? "奇数" : "偶数"}' | sort | uniq -c | awk '{print $2, $1}'

# sortの-nと-kオプション
# -k2,2 で2列目から2列目を基準にソートする
# -nで数字の昇順
# seq 19 | awk '{print $1%2 ? "奇数" : "偶数"}' | sort | uniq -c | awk '{print $2, $1}' | sort -k2,2n

# awkの連想配列を使うとsort, uniqを使わなくてもいける
# seq 19 | awk '{print $1%2 ? "奇数" : "偶数"}' | awk '{a[$1]++}END{for(k in a) print k a[k]}'

# seq 4 | xargs mkdir
# seq 4 | xargs rmdir

# # -nオプションは入力に渡す個数を指定。以下の例ではmv 1 2とmv 3 4が実行される
# mkdir 1 3
# seq 4 | xargs -n2 mv

# rmdir 2 4

# # -Iオプションで入力の値を@という文字に置き換える
# seq 4 | xargs -I@ mkdir dir_@
# ls -d dir_*
# rmdir dir_*

seq 4 | awk '$1%2==0{print "mkdir even_" $1}$1%2{print "mkdir odd_" $1}' | bash
