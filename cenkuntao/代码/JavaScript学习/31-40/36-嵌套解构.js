let person = {
    name: `Matt`,
    age: 16,
    job: {
        title: `software engineer`,
    }
};

let personCopy = {};

({
    name: personCopy.name,
    age: personCopy.age,
    job: personCopy.job
} = person);
console.log(personCopy);