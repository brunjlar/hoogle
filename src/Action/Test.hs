{-# LANGUAGE ViewPatterns, TupleSections, RecordWildCards, ScopedTypeVariables, PatternGuards #-}

module Action.Test(actionTest) where

import Query
import Action.CmdLine
import Action.Search
import Action.Server
import General.Util
import Input.Type
import System.IO.Extra


actionTest :: CmdLine -> IO ()
actionTest Test{} = withBuffering stdout NoBuffering $ do
    general_util_test
    input_type_test
    query_test
    action_search_test
    action_server_test
    putStrLn ""
