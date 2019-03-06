import nimfastText/[fasttext, utils]

var ft: FastText

ft.loadModel(constructStdString("tests/lid.176.ftz"))

var
    print_prob = false
    k:int32 = 1
    threshold:cfloat = 0.0
    words: vect[int32]
    output: vect[pair[cfloat, int32]]
    ss = constructStdIStringStream(constructStdString("അമ്മ"))

#ft.predict(ss,k,print_prob,threshold)

ft.predict(k,words,output,threshold)

#echo output[0]