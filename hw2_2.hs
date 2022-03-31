module Fun where

  newtype Fun a b = Fun {getFun :: a -> b}

  instance Functor (Fun a) where
    fmap f (Fun b) = Fun(\x -> f (b x))             

    -- instance Functor ((->) a) where
    -- fmap f g = f . g

  instance Applicative (Fun a) where
    pure a = Fun(\_ -> a)
    Fun a <*> Fun b = Fun(\x -> (a x) (b x))

    -- instance Applicative ((->) a) where
    -- pure x = (\_ -> x)
    -- f <*> g = \x -> f x (g x)
