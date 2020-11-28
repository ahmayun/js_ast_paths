files="$@"
outpath="ast_paths"
rm -r $outpath
mkdir $outpath
for file in $files
do
    echo "Parsing $file ...."
    foldername=$(echo $file | rev | cut -d"/" -f2 | rev)
    output=$(bin/unuglifyjs $file --nice_formatting --extract_features --no_hash 2> /dev/null)
    if [ $? -eq 0 ] ; then
        echo "SUCCESS $file" >> $outpath/log
        outfile="$outpath/$foldername/$(basename $file).json"
        mkdir -p $(dirname $outfile)
        echo $output >> $outfile
    else
        echo "FAILED $file" >> $outpath/log
    fi
done
