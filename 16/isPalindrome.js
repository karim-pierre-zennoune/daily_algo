/**
 * 
 * @param {string} str 
 */
export default function isPalindrome(str) {
    if (typeof str !== 'string' || !str.length) {
        return false;
    }
    const formated = str.toLowerCase();
    const reversed = formated.split('').reverse().join('')
    return formated === reversed;
}