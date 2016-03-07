function fac(n)
    if n == 0 then
        return 1
    else
        return n * fac(n - 1)
    end
end
aa = 5
print(fac(aa))
aa = aa + 10
fac2 = fac
print(fac2(aa))
