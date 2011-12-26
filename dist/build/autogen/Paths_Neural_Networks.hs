module Paths_Neural_Networks (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,1], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/chidimuorah/Library/Haskell/ghc-7.0.4/lib/Neural-Networks-0.0.1/bin"
libdir     = "/Users/chidimuorah/Library/Haskell/ghc-7.0.4/lib/Neural-Networks-0.0.1/lib"
datadir    = "/Users/chidimuorah/Library/Haskell/ghc-7.0.4/lib/Neural-Networks-0.0.1/share"
libexecdir = "/Users/chidimuorah/Library/Haskell/ghc-7.0.4/lib/Neural-Networks-0.0.1/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "Neural_Networks_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "Neural_Networks_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "Neural_Networks_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "Neural_Networks_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
