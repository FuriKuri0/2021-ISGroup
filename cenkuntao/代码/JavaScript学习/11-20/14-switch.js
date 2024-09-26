let num = 25;

switch (true) {
    case num < 0:
        console.log(`num<0`);
        breakl;
    case num >= 0 && num < 10:
        console.log(`0<=num<10`);
        break;
    case num >= 10 && num < 20:
        console.log(`10<=num<20`);
        break;
    default:
        console.log(`num>=20`);
}