export default function formatName(firstName, lastName){
    let a, b;

    if (!firstName && !lastName){
        return "";
    }

    if(firstName && firstName[0]){
        a = firstName[0].toUpperCase() + firstName.substr(1);
    }

    if(lastName){
        b = lastName.toUpperCase();
    }
    else{
        return a;
    }
    return a + " " + b;
}