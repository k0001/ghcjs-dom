{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PositionError
       (pattern PERMISSION_DENIED, pattern POSITION_UNAVAILABLE,
        pattern TIMEOUT, js_getCode, getCode, js_getMessage, getMessage,
        PositionError, castToPositionError, gTypePositionError)
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

pattern PERMISSION_DENIED = 1
pattern POSITION_UNAVAILABLE = 2
pattern TIMEOUT = 3
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        JSRef PositionError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.code Mozilla PositionError.code documentation> 
getCode :: (MonadIO m) => PositionError -> m Word
getCode self = liftIO (js_getCode (unPositionError self))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        JSRef PositionError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.message Mozilla PositionError.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => PositionError -> m result
getMessage self
  = liftIO (fromJSString <$> (js_getMessage (unPositionError self)))
#else
module GHCJS.DOM.PositionError (
  ) where
#endif
