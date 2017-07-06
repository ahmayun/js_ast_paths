if [ $# -lt 2 ]
    then
        echo "Usage: script-glove.sh <length> <width>"
        exit 1
fi
length=$1
width=$2

mkdir json_models
python extract_features_to_glove_json.py --dir ../js_test/ --max_path_length ${length} --max_path_width ${width} > json_models/js_test${length}x${width}.txt 2> paths-nohup.out
python extract_features_to_glove_json.py --dir ../mining-clean2/home/urialon/mining-clean2/home/urialon/mining/topstars/ --max_path_length ${length} --max_path_width ${width} > json_models/js_topstars${length}x${width}.txt 2> paths-nohup.out
#python toGlove.py json_models/jsnice_training_clean${length}x${width}.txt
#cd ../glove/
#./uridemo.sh ${length} ${width}
