function max(num1,num2)
    if(num1 > num2) then
        result = num1;
    else
        result = num2;
    end

    return result;
end

print("两者较大值：", max(5,9))
