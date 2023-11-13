function something(){
    return false;
}

test("Something should be true", () => {
    expect(something()).toBe(true);
});
