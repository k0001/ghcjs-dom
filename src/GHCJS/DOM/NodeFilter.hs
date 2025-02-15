{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NodeFilter
       (js_acceptNode, acceptNode, pattern FILTER_ACCEPT,
        pattern FILTER_REJECT, pattern FILTER_SKIP, pattern SHOW_ALL,
        pattern SHOW_ELEMENT, pattern SHOW_ATTRIBUTE, pattern SHOW_TEXT,
        pattern SHOW_CDATA_SECTION, pattern SHOW_ENTITY_REFERENCE,
        pattern SHOW_ENTITY, pattern SHOW_PROCESSING_INSTRUCTION,
        pattern SHOW_COMMENT, pattern SHOW_DOCUMENT,
        pattern SHOW_DOCUMENT_TYPE, pattern SHOW_DOCUMENT_FRAGMENT,
        pattern SHOW_NOTATION, NodeFilter, castToNodeFilter,
        gTypeNodeFilter)
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

 
foreign import javascript unsafe "$1[\"acceptNode\"]($2)"
        js_acceptNode :: JSRef NodeFilter -> JSRef Node -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter.acceptNode Mozilla NodeFilter.acceptNode documentation> 
acceptNode ::
           (MonadIO m, IsNode n) => NodeFilter -> Maybe n -> m Int
acceptNode self n
  = liftIO
      (js_acceptNode (unNodeFilter self)
         (maybe jsNull (unNode . toNode) n))
pattern FILTER_ACCEPT = 1
pattern FILTER_REJECT = 2
pattern FILTER_SKIP = 3
pattern SHOW_ALL = 4294967295
pattern SHOW_ELEMENT = 1
pattern SHOW_ATTRIBUTE = 2
pattern SHOW_TEXT = 4
pattern SHOW_CDATA_SECTION = 8
pattern SHOW_ENTITY_REFERENCE = 16
pattern SHOW_ENTITY = 32
pattern SHOW_PROCESSING_INSTRUCTION = 64
pattern SHOW_COMMENT = 128
pattern SHOW_DOCUMENT = 256
pattern SHOW_DOCUMENT_TYPE = 512
pattern SHOW_DOCUMENT_FRAGMENT = 1024
pattern SHOW_NOTATION = 2048
#else
module GHCJS.DOM.NodeFilter (
  module Graphics.UI.Gtk.WebKit.DOM.NodeFilter
  ) where
import Graphics.UI.Gtk.WebKit.DOM.NodeFilter
#endif
