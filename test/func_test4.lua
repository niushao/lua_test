myprint = function(param)
    print("this is print func -   ##", param,"##")
end

function add(num1,num2,functionPrint)
    result = num1 + num2
    functionPrint(result)
end

myprint(10)
sleep(2)
add(2,5,myprint)
