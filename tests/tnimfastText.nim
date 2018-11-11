import nimfastText/fasttext

var ft: FastText

ft.loadModel(constructStdString("tests/lid.176.ftz"))

var 
    print_prob = false
    k:int32 = 1
    threshold:cfloat = 0.0
    output:vect[pair[cfloat, std_string]]
    ss = constructStdIStringStream(constructStdString("അമ്മ"))

ft.predict(ss,k,print_prob,threshold)

#ft.predict(ss,k,output,threshold)

#echo output[0]