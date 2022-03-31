module Fun where

  newtype Fun a b = Fun {getFun :: a -> b}

  instance Functor (Fun a) where
    fmap f (Fun b) = Fun(\x -> f (b x))
    -- fmap f (Fun getFun) = Fun (f getFun)

    -- instance Functor ((->) r) where
    -- fmap f g = (\x -> f (g x))

  instance Applicative (Fun a) where
    pure a = Fun(\_ -> a)
    Fun a <*> Fun b = Fun(\x -> (a x) (b x))

    -- instance Applicative ((->) a) where
    -- pure x = (\_ -> x)
    -- f <*> g = \x -> f x (g x)
