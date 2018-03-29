pip3 install spacy textblob vaderSentiment git+https://github.com/mit-nlp/MITIE.git
python3 -m spacy download en
mkdir models
wget https://github.com/mit-nlp/MITIE/releases/download/v0.4/MITIE-models-v0.2.tar.bz2 -P models
cd models
tar -xf MITIE-models-v0.2.tar.bz2
mv MITIE-models/english/total_word_feature_extractor.dat .
rm -rf MITIE-models MITIE-models-v0.2.tar.bz2
cd ..