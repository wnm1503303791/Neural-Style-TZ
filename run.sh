#Intel(R) Xeon(R) Gold 6140 CPU @ 2.30GHz * 2, 36 cores
#Tesla P100-PCIE-16GB * 1 (UUID: GPU-ae5cde47-bf7f-a6c6-8a68-8a3c96b2dadf)

<<'old'
CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/tb-1.jpg     --styles style/7.jpg --output result/result-tb-7.jpg
CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/jw-1.jpg     --styles style/7.jpg --output result/result-jw-7.jpg
CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/nju-1.jpg    --styles style/7.jpg --output result/result-nju-7.jpg
CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/nju-cs-1.jpg --styles style/7.jpg --output result/result-nju-cs-7.jpg

CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/tb-1.jpg     --styles style/8.jpg --output result/result-tb-8.jpg
CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/jw-1.jpg     --styles style/8.jpg --output result/result-jw-8.jpg
CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/nju-1.jpg    --styles style/8.jpg --output result/result-nju-8.jpg
CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/nju-cs-1.jpg --styles style/8.jpg --output result/result-nju-cs-8.jpg
old

#declare -a style=('10.jpg' '11.jpg' '12.jpg' '13.jpg' '14.jpg' '15.jpg' '16.jpg' '17.jpg' '18.jpg' '19.jpg')
declare -a style=('9.jpg' '2.jpg' '3.jpg' '4.jpg' '5.jpg' '6.jpg' '20.jpg')
declare -a content=('tb' 'jw' 'nju' 'nju-cs')

for s in "${style[@]}";do
    echo ${s}
	for c in "${content[@]}";do
	    echo ${c}
		CUDA_VISIBLE_DEVICES=1 python neural_style.py --content content/${c}-1.jpg --styles style/${s} --output result/result-${c}-${s}
	done
done

bash push.sh
