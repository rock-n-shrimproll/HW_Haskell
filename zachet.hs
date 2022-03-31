module Zachet where

data Ident b c = Id b c

instance Functor (Ident d) where
  -- fmap :: (b -> с) -> (Ident d b) -> (Ident d с)

  fmap f (Id d b) = Id d (f b)
  -- fmap:: (b -> d) -> Ident c b  -> (Ident с d )




  -- instance Functor ((->) r) where
  -- fmap f g = (\x -> f (g x))

  -- fmap f (Fun b) = Fun(\x -> f (b x))

  -- instance (Monoid c) => Applicative (Ident d) where
    -- pure a = Ident mempty
    -- Ident a <*> Ident b =

--  instance Applicative (Fun a) where
--    pure a = Fun(\_ -> a)
--    Fun a <*> Fun b = Fun(\x -> (a x) (b x))

    -- instance Applicative ((->) a) where
    -- pure x = (\_ -> x)
    -- f <*> g = \x -> f x (g x)
