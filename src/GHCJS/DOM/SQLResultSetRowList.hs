{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLResultSetRowList
       (js_item, item, js_getLength, getLength, SQLResultSetRowList,
        castToSQLResultSetRowList, gTypeSQLResultSetRowList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef SQLResultSetRowList -> Word -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList.item Mozilla SQLResultSetRowList.item documentation> 
item :: (MonadIO m) => SQLResultSetRowList -> Word -> m (JSRef a)
item self index
  = liftIO (js_item (unSQLResultSetRowList self) index)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef SQLResultSetRowList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList.length Mozilla SQLResultSetRowList.length documentation> 
getLength :: (MonadIO m) => SQLResultSetRowList -> m Word
getLength self = liftIO (js_getLength (unSQLResultSetRowList self))
#else
module GHCJS.DOM.SQLResultSetRowList (
  ) where
#endif
