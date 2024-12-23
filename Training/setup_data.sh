mkdir -p data/markup
mkdir -p data/no_markup
mkdir -p data/test_data

cat hw_3_markup_data.txt | cut -f 2 | xargs -n 1 -P 500 wget  -P data/markup
cat hw_3_no_markup_data.txt | cut -f 2 | xargs -n 1 -P 10000 wget -P  data/no_markup