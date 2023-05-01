public Integer fibonacci(Integer n) {
    Integer temp = 0;
    Integer last = 1;
    Integer current = 1;
    for (Integer i = 3; i <= n; i++) {
        temp = current; // temp-->1
        current += last; // 1 + 1
        last = temp; //
    }
    return current;



}