{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_CabalBoi (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/emma/Library/Haskell/bin"
libdir     = "/Users/emma/Library/Haskell/ghc-8.4.3-x86_64/lib/CabalBoi-0.1.0.0"
dynlibdir  = "/Users/emma/Library/Haskell/ghc-8.4.3-x86_64/lib/x86_64-osx-ghc-8.4.3"
datadir    = "/Users/emma/Library/Haskell/share/ghc-8.4.3-x86_64/CabalBoi-0.1.0.0"
libexecdir = "/Users/emma/Library/Haskell/libexec/x86_64-osx-ghc-8.4.3/CabalBoi-0.1.0.0"
sysconfdir = "/Users/emma/Library/Haskell/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "CabalBoi_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "CabalBoi_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "CabalBoi_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "CabalBoi_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "CabalBoi_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "CabalBoi_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
