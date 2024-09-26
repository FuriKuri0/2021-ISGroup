function Person(name, age, job) {
    console.log(this);
    this.name = name;
    this.age = age;
    this.job = job;
    this.sayNmae = function() {
        console.log(this.name);
    }
}

let person1 = new Person(`kitty`, `22`, `worker`); // Person {}
Person(`hello`, `3`, `play game`); // 指向window