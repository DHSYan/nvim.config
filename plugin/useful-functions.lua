print_table = function(table) 
    if table ~= nil then 
        for k,v in pairs(table) do
            print(k .. "==")
            print(v)
            print("\n")
        end
    else 
        print("table is nil")
    end
end

test_table = {
    hi = 5,
    lol = 6, 
    dang = true, 
    cooked = {
        big = 69, 
        boo = 420
    }
}
