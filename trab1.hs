import System.IO
import Data.Char 

main :: IO ()
main = do
    print "Digite uma frase para verificar se eh palindromo ou nao"
    inputStr <- getLine 
    let input = read inputStr :: String
    if palindrome input then
        print $ show input <> " eh palindromo"
    else
        print $ show input <> " nao eh palindromo"


invertePalavras :: String -> String
invertePalavras = unwords . map reverse . words

palindrome :: String -> Bool
<<<<<<< Updated upstream
palindrome x = invertePalavras x == x

{-- filtraPalavraEInverte :: String -> [String]
=======
palindrome x = invertePalavras (map toLower x) == (map toLower x)

{--filtraPalavraEInverte :: String -> [String]
>>>>>>> Stashed changes
filtraPalavraEInverte = words . (filter (\x -> isAlpha x)) . toLower . reverse
--}