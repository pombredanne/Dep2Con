import qualified Language.Structure.Dependency as Dep (drawTree)
import qualified Language.Structure.Dependency.Parse as Dep (pTree,pDeps)
import           Text.ParserCombinators.UU.Utils (runParser)

main :: IO ()
main =
    putStrLn
      . Dep.drawTree
      . runParser "stdin" Dep.pDeps
      =<< getContents
