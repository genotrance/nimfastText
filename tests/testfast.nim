import nimfastText/fasttext

var ft: FastText

ft.loadModel(constructStdString("lid.176.ftz"))

var 
    print_prob = false
    k:int32 = 1
    threshold:real = 0.0
    output:vect[pair[real, std_string]]
    ss = constructStdIStringStream(constructStdString("അമ്മ"))

ft.predict(ss,k,print_prob,threshold)

ft.predict(ss,k,output,threshold)

echo output[0]