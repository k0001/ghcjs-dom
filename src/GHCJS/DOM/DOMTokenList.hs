{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMTokenList
       (ghcjs_dom_dom_token_list_item, domTokenListItem,
        ghcjs_dom_dom_token_list_contains, domTokenListContains,
        ghcjs_dom_dom_token_list_add, domTokenListAdd,
        ghcjs_dom_dom_token_list_remove, domTokenListRemove,
        ghcjs_dom_dom_token_list_toggle, domTokenListToggle,
        ghcjs_dom_dom_token_list_get_length, domTokenListGetLength,
        DOMTokenList, IsDOMTokenList, castToDOMTokenList,
        gTypeDOMTokenList, toDOMTokenList)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_token_list_item ::
        JSRef DOMTokenList -> Word -> IO JSString
#else 
ghcjs_dom_dom_token_list_item ::
                                JSRef DOMTokenList -> Word -> IO JSString
ghcjs_dom_dom_token_list_item = undefined
#endif
 
domTokenListItem ::
                 (IsDOMTokenList self, FromJSString result) =>
                   self -> Word -> IO result
domTokenListItem self index
  = fromJSString <$>
      (ghcjs_dom_dom_token_list_item
         (unDOMTokenList (toDOMTokenList self))
         index)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_token_list_contains ::
        JSRef DOMTokenList -> JSString -> IO Bool
#else 
ghcjs_dom_dom_token_list_contains ::
                                    JSRef DOMTokenList -> JSString -> IO Bool
ghcjs_dom_dom_token_list_contains = undefined
#endif
 
domTokenListContains ::
                     (IsDOMTokenList self, ToJSString token) => self -> token -> IO Bool
domTokenListContains self token
  = ghcjs_dom_dom_token_list_contains
      (unDOMTokenList (toDOMTokenList self))
      (toJSString token)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"add\"].apply($1, $2)"
        ghcjs_dom_dom_token_list_add ::
        JSRef DOMTokenList -> JSArray JSString -> IO ()
#else 
ghcjs_dom_dom_token_list_add ::
                               JSRef DOMTokenList -> JSArray JSString -> IO ()
ghcjs_dom_dom_token_list_add = undefined
#endif
 
domTokenListAdd ::
                (IsDOMTokenList self, ToJSString tokens) =>
                  self -> [tokens] -> IO ()
domTokenListAdd self tokens
  = ghcjs_dom_dom_token_list_add
      (unDOMTokenList (toDOMTokenList self))
      (ptoJSRefListOf (map toJSString tokens))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"remove\"].apply($1, $2)"
        ghcjs_dom_dom_token_list_remove ::
        JSRef DOMTokenList -> JSArray JSString -> IO ()
#else 
ghcjs_dom_dom_token_list_remove ::
                                  JSRef DOMTokenList -> JSArray JSString -> IO ()
ghcjs_dom_dom_token_list_remove = undefined
#endif
 
domTokenListRemove ::
                   (IsDOMTokenList self, ToJSString tokens) =>
                     self -> [tokens] -> IO ()
domTokenListRemove self tokens
  = ghcjs_dom_dom_token_list_remove
      (unDOMTokenList (toDOMTokenList self))
      (ptoJSRefListOf (map toJSString tokens))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"toggle\"]($2, $3) ? 1 : 0)"
        ghcjs_dom_dom_token_list_toggle ::
        JSRef DOMTokenList -> JSString -> Bool -> IO Bool
#else 
ghcjs_dom_dom_token_list_toggle ::
                                  JSRef DOMTokenList -> JSString -> Bool -> IO Bool
ghcjs_dom_dom_token_list_toggle = undefined
#endif
 
domTokenListToggle ::
                   (IsDOMTokenList self, ToJSString token) =>
                     self -> token -> Bool -> IO Bool
domTokenListToggle self token force
  = ghcjs_dom_dom_token_list_toggle
      (unDOMTokenList (toDOMTokenList self))
      (toJSString token)
      force


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_token_list_get_length ::
        JSRef DOMTokenList -> IO Word
#else 
ghcjs_dom_dom_token_list_get_length ::
                                      JSRef DOMTokenList -> IO Word
ghcjs_dom_dom_token_list_get_length = undefined
#endif
 
domTokenListGetLength :: (IsDOMTokenList self) => self -> IO Word
domTokenListGetLength self
  = ghcjs_dom_dom_token_list_get_length
      (unDOMTokenList (toDOMTokenList self))
#else
module GHCJS.DOM.DOMTokenList (
  module Graphics.UI.Gtk.WebKit.DOM.DOMTokenList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMTokenList
#endif
