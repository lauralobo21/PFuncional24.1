-- Atividade 07

atividade = "07"

nome = "Laura Soléria Lobo Vitorino Maciel"

matricula = "555523"

data Stack a = Empty | Value a (Stack a) deriving (Show)

push :: Stack a -> a -> Stack a
push stack x = Value x stack

pop :: Stack a -> Stack a
pop Empty = Empty
pop (Value _ rest) = rest

top :: Stack a -> Maybe a
top Empty = Nothing
top (Value x _) = Just x

is'empty :: Stack a -> Bool
is'empty Empty = True
is'empty _ = False

precedence :: Char -> Int
precedence '^' = 3
precedence '*' = 2
precedence '/' = 2
precedence '+' = 1
precedence '-' = 1
precedence _ = 0

is'operator :: Char -> Bool
is'operator x = x `elem` "+-*/^"

pos'fixa :: [Char] -> [Char]
pos'fixa = pos'fixa' [] Empty

pos'fixa' :: [Char] -> Stack Char -> [Char] -> [Char]
pos'fixa' output stack [] = output ++ pop'all'operators stack
pos'fixa' output stack (x : xs)
  | x == '(' = pos'fixa' output (push stack x) xs
  | x == ')' = pos'fixa' (output ++ pop'till'open'paren stack) (pop'till'open'paren' stack) xs
  | is'operator x = pos'fixa' (output ++ pop'operators stack x) (push'operators stack x) xs
  | otherwise = pos'fixa' (output ++ [x]) stack xs

pop'till'open'paren :: Stack Char -> [Char]
pop'till'open'paren Empty = []
pop'till'open'paren (Value '(' _) = []
pop'till'open'paren (Value x rest) = x : pop'till'open'paren rest

pop'till'open'paren' :: Stack Char -> Stack Char
pop'till'open'paren' Empty = Empty
pop'till'open'paren' (Value '(' rest) = rest
pop'till'open'paren' (Value _ rest) = pop'till'open'paren' rest

pop'operators :: Stack Char -> Char -> [Char]
pop'operators Empty _ = []
pop'operators stack@(Value t rest) op
  | is'operator t && precedence t >= precedence op = t : pop'operators rest op
  | otherwise = []

push'operators :: Stack Char -> Char -> Stack Char
push'operators stack op = push (pop'operators' stack op) op

pop'operators' :: Stack Char -> Char -> Stack Char
pop'operators' Empty _ = Empty
pop'operators' stack@(Value t rest) op
  | is'operator t && precedence t >= precedence op = pop'operators' rest op
  | otherwise = stack

pop'all'operators :: Stack Char -> [Char]
pop'all'operators Empty = []
pop'all'operators (Value t rest) = t : pop'all'operators rest