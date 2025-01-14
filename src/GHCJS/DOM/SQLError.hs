{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLError
       (pattern UNKNOWN_ERR, pattern DATABASE_ERR, pattern VERSION_ERR,
        pattern TOO_LARGE_ERR, pattern QUOTA_ERR, pattern SYNTAX_ERR,
        pattern CONSTRAINT_ERR, pattern TIMEOUT_ERR, js_getCode, getCode,
        js_getMessage, getMessage, SQLError, castToSQLError, gTypeSQLError)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern UNKNOWN_ERR = 0
pattern DATABASE_ERR = 1
pattern VERSION_ERR = 2
pattern TOO_LARGE_ERR = 3
pattern QUOTA_ERR = 4
pattern SYNTAX_ERR = 5
pattern CONSTRAINT_ERR = 6
pattern TIMEOUT_ERR = 7
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        JSRef SQLError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLError.code Mozilla SQLError.code documentation> 
getCode :: (MonadIO m) => SQLError -> m Word
getCode self = liftIO (js_getCode (unSQLError self))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        JSRef SQLError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLError.message Mozilla SQLError.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => SQLError -> m result
getMessage self
  = liftIO (fromJSString <$> (js_getMessage (unSQLError self)))
#else
module GHCJS.DOM.SQLError (
  ) where
#endif
