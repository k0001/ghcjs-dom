{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Document
       (js_newDocument, newDocument, js_createElement, createElement,
        js_createDocumentFragment, createDocumentFragment,
        js_createTextNode, createTextNode, js_createComment, createComment,
        js_createCDATASection, createCDATASection,
        js_createProcessingInstruction, createProcessingInstruction,
        js_createAttribute, createAttribute, js_createEntityReference,
        createEntityReference, js_getElementsByTagName,
        getElementsByTagName, js_importNode, importNode,
        js_createElementNS, createElementNS, js_createAttributeNS,
        createAttributeNS, js_getElementsByTagNameNS,
        getElementsByTagNameNS, js_getElementById, getElementById,
        js_adoptNode, adoptNode, js_createEvent, createEvent,
        js_createRange, createRange, js_createNodeIterator,
        createNodeIterator, js_createTreeWalker, createTreeWalker,
        js_getOverrideStyle, getOverrideStyle, js_createExpression,
        createExpression, js_createNSResolver, createNSResolver,
        js_evaluate, evaluate, js_execCommand, execCommand,
        js_queryCommandEnabled, queryCommandEnabled,
        js_queryCommandIndeterm, queryCommandIndeterm,
        js_queryCommandState, queryCommandState, js_queryCommandSupported,
        queryCommandSupported, js_queryCommandValue, queryCommandValue,
        js_getElementsByName, getElementsByName, js_elementFromPoint,
        elementFromPoint, js_caretRangeFromPoint, caretRangeFromPoint,
        js_createCSSStyleDeclaration, createCSSStyleDeclaration,
        js_getCSSCanvasContext, getCSSCanvasContext,
        js_getElementsByClassName, getElementsByClassName, js_hasFocus,
        hasFocus, js_querySelector, querySelector, js_querySelectorAll,
        querySelectorAll, js_webkitCancelFullScreen,
        webkitCancelFullScreen, js_webkitExitFullscreen,
        webkitExitFullscreen, js_exitPointerLock, exitPointerLock,
        js_webkitGetNamedFlows, webkitGetNamedFlows, js_createTouch,
        createTouch, js_createTouchList, createTouchList, js_getDoctype,
        getDoctype, js_getImplementation, getImplementation,
        js_getDocumentElement, getDocumentElement, js_getInputEncoding,
        getInputEncoding, js_getXmlEncoding, getXmlEncoding,
        js_setXmlVersion, setXmlVersion, js_getXmlVersion, getXmlVersion,
        js_setXmlStandalone, setXmlStandalone, js_getXmlStandalone,
        getXmlStandalone, js_setDocumentURI, setDocumentURI,
        js_getDocumentURI, getDocumentURI, js_getDefaultView,
        getDefaultView, js_getStyleSheets, getStyleSheets,
        js_getContentType, getContentType, js_setTitle, setTitle,
        js_getTitle, getTitle, js_getReferrer, getReferrer, js_getDomain,
        getDomain, js_getURL, getURL, js_setCookie, setCookie,
        js_getCookie, getCookie, js_setBody, setBody, js_getBody, getBody,
        js_getHead, getHead, js_getImages, getImages, js_getApplets,
        getApplets, js_getLinks, getLinks, js_getForms, getForms,
        js_getAnchors, getAnchors, js_getLastModified, getLastModified,
        js_setCharset, setCharset, js_getCharset, getCharset,
        js_getDefaultCharset, getDefaultCharset, js_getReadyState,
        getReadyState, js_getCharacterSet, getCharacterSet,
        js_getPreferredStylesheetSet, getPreferredStylesheetSet,
        js_setSelectedStylesheetSet, setSelectedStylesheetSet,
        js_getSelectedStylesheetSet, getSelectedStylesheetSet,
        js_getActiveElement, getActiveElement, js_getCompatMode,
        getCompatMode, js_getWebkitIsFullScreen, getWebkitIsFullScreen,
        js_getWebkitFullScreenKeyboardInputAllowed,
        getWebkitFullScreenKeyboardInputAllowed,
        js_getWebkitCurrentFullScreenElement,
        getWebkitCurrentFullScreenElement, js_getWebkitFullscreenEnabled,
        getWebkitFullscreenEnabled, js_getWebkitFullscreenElement,
        getWebkitFullscreenElement, js_getPointerLockElement,
        getPointerLockElement, js_getVisibilityState, getVisibilityState,
        js_getHidden, getHidden, js_getSecurityPolicy, getSecurityPolicy,
        js_getCurrentScript, getCurrentScript, js_getOrigin, getOrigin,
        Document, castToDocument, gTypeDocument, IsDocument, toDocument)
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

 
foreign import javascript unsafe "new window[\"Document\"]()"
        js_newDocument :: IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation> 
newDocument :: (MonadIO m) => m Document
newDocument = liftIO (js_newDocument >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createElement\"]($2)"
        js_createElement ::
        JSRef Document -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElement ::
              (MonadIO m, IsDocument self, ToJSString tagName) =>
                self -> tagName -> m (Maybe Element)
createElement self tagName
  = liftIO
      ((js_createElement (unDocument (toDocument self))
          (toJSString tagName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createDocumentFragment\"]()"
        js_createDocumentFragment ::
        JSRef Document -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment ::
                       (MonadIO m, IsDocument self) => self -> m (Maybe DocumentFragment)
createDocumentFragment self
  = liftIO
      ((js_createDocumentFragment (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"createTextNode\"]($2)"
        js_createTextNode :: JSRef Document -> JSString -> IO (JSRef Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode ::
               (MonadIO m, IsDocument self, ToJSString data') =>
                 self -> data' -> m (Maybe Text)
createTextNode self data'
  = liftIO
      ((js_createTextNode (unDocument (toDocument self))
          (toJSString data'))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createComment\"]($2)"
        js_createComment ::
        JSRef Document -> JSString -> IO (JSRef Comment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment ::
              (MonadIO m, IsDocument self, ToJSString data') =>
                self -> data' -> m (Maybe Comment)
createComment self data'
  = liftIO
      ((js_createComment (unDocument (toDocument self))
          (toJSString data'))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createCDATASection\"]($2)"
        js_createCDATASection ::
        JSRef Document -> JSString -> IO (JSRef CDATASection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection ::
                   (MonadIO m, IsDocument self, ToJSString data') =>
                     self -> data' -> m (Maybe CDATASection)
createCDATASection self data'
  = liftIO
      ((js_createCDATASection (unDocument (toDocument self))
          (toJSString data'))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createProcessingInstruction\"]($2,\n$3)"
        js_createProcessingInstruction ::
        JSRef Document ->
          JSString -> JSString -> IO (JSRef ProcessingInstruction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstruction ::
                            (MonadIO m, IsDocument self, ToJSString target,
                             ToJSString data') =>
                              self -> target -> data' -> m (Maybe ProcessingInstruction)
createProcessingInstruction self target data'
  = liftIO
      ((js_createProcessingInstruction (unDocument (toDocument self))
          (toJSString target)
          (toJSString data'))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createAttribute\"]($2)"
        js_createAttribute ::
        JSRef Document -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute ::
                (MonadIO m, IsDocument self, ToJSString name) =>
                  self -> name -> m (Maybe DOMAttr)
createAttribute self name
  = liftIO
      ((js_createAttribute (unDocument (toDocument self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createEntityReference\"]($2)" js_createEntityReference ::
        JSRef Document -> JSString -> IO (JSRef EntityReference)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEntityReference Mozilla Document.createEntityReference documentation> 
createEntityReference ::
                      (MonadIO m, IsDocument self, ToJSString name) =>
                        self -> name -> m (Maybe EntityReference)
createEntityReference self name
  = liftIO
      ((js_createEntityReference (unDocument (toDocument self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        js_getElementsByTagName ::
        JSRef Document -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadIO m, IsDocument self, ToJSString tagname) =>
                       self -> tagname -> m (Maybe NodeList)
getElementsByTagName self tagname
  = liftIO
      ((js_getElementsByTagName (unDocument (toDocument self))
          (toJSString tagname))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"importNode\"]($2, $3)"
        js_importNode ::
        JSRef Document -> JSRef Node -> Bool -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode ::
           (MonadIO m, IsDocument self, IsNode importedNode) =>
             self -> Maybe importedNode -> Bool -> m (Maybe Node)
importNode self importedNode deep
  = liftIO
      ((js_importNode (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) importedNode)
          deep)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createElementNS\"]($2, $3)"
        js_createElementNS ::
        JSRef Document -> JSString -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNS ::
                (MonadIO m, IsDocument self, ToJSString namespaceURI,
                 ToJSString qualifiedName) =>
                  self -> namespaceURI -> qualifiedName -> m (Maybe Element)
createElementNS self namespaceURI qualifiedName
  = liftIO
      ((js_createElementNS (unDocument (toDocument self))
          (toJSString namespaceURI)
          (toJSString qualifiedName))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createAttributeNS\"]($2, $3)" js_createAttributeNS ::
        JSRef Document -> JSString -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNS ::
                  (MonadIO m, IsDocument self, ToJSString namespaceURI,
                   ToJSString qualifiedName) =>
                    self -> namespaceURI -> qualifiedName -> m (Maybe DOMAttr)
createAttributeNS self namespaceURI qualifiedName
  = liftIO
      ((js_createAttributeNS (unDocument (toDocument self))
          (toJSString namespaceURI)
          (toJSString qualifiedName))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)" js_getElementsByTagNameNS
        :: JSRef Document -> JSString -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadIO m, IsDocument self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> namespaceURI -> localName -> m (Maybe NodeList)
getElementsByTagNameNS self namespaceURI localName
  = liftIO
      ((js_getElementsByTagNameNS (unDocument (toDocument self))
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        js_getElementById ::
        JSRef Document -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementById Mozilla Document.getElementById documentation> 
getElementById ::
               (MonadIO m, IsDocument self, ToJSString elementId) =>
                 self -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftIO
      ((js_getElementById (unDocument (toDocument self))
          (toJSString elementId))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"adoptNode\"]($2)"
        js_adoptNode :: JSRef Document -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode ::
          (MonadIO m, IsDocument self, IsNode source) =>
            self -> Maybe source -> m (Maybe Node)
adoptNode self source
  = liftIO
      ((js_adoptNode (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) source))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        js_createEvent :: JSRef Document -> JSString -> IO (JSRef Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent ::
            (MonadIO m, IsDocument self, ToJSString eventType) =>
              self -> eventType -> m (Maybe Event)
createEvent self eventType
  = liftIO
      ((js_createEvent (unDocument (toDocument self))
          (toJSString eventType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createRange\"]()"
        js_createRange :: JSRef Document -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange ::
            (MonadIO m, IsDocument self) => self -> m (Maybe DOMRange)
createRange self
  = liftIO
      ((js_createRange (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createNodeIterator\"]($2, $3,\n$4, $5)" js_createNodeIterator
        ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> Bool -> IO (JSRef NodeIterator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIterator ::
                   (MonadIO m, IsDocument self, IsNode root) =>
                     self ->
                       Maybe root ->
                         Word -> Maybe NodeFilter -> Bool -> m (Maybe NodeIterator)
createNodeIterator self root whatToShow filter
  expandEntityReferences
  = liftIO
      ((js_createNodeIterator (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) root)
          whatToShow
          (maybe jsNull unNodeFilter filter)
          expandEntityReferences)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createTreeWalker\"]($2, $3,\n$4, $5)" js_createTreeWalker ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> Bool -> IO (JSRef TreeWalker)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalker ::
                 (MonadIO m, IsDocument self, IsNode root) =>
                   self ->
                     Maybe root ->
                       Word -> Maybe NodeFilter -> Bool -> m (Maybe TreeWalker)
createTreeWalker self root whatToShow filter expandEntityReferences
  = liftIO
      ((js_createTreeWalker (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) root)
          whatToShow
          (maybe jsNull unNodeFilter filter)
          expandEntityReferences)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getOverrideStyle\"]($2, $3)"
        js_getOverrideStyle ::
        JSRef Document ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyle ::
                 (MonadIO m, IsDocument self, IsElement element,
                  ToJSString pseudoElement) =>
                   self ->
                     Maybe element -> pseudoElement -> m (Maybe CSSStyleDeclaration)
getOverrideStyle self element pseudoElement
  = liftIO
      ((js_getOverrideStyle (unDocument (toDocument self))
          (maybe jsNull (unElement . toElement) element)
          (toJSString pseudoElement))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        js_createExpression ::
        JSRef Document ->
          JSString -> JSRef XPathNSResolver -> IO (JSRef XPathExpression)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpression ::
                 (MonadIO m, IsDocument self, ToJSString expression) =>
                   self ->
                     expression -> Maybe XPathNSResolver -> m (Maybe XPathExpression)
createExpression self expression resolver
  = liftIO
      ((js_createExpression (unDocument (toDocument self))
          (toJSString expression)
          (maybe jsNull unXPathNSResolver resolver))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        js_createNSResolver ::
        JSRef Document -> JSRef Node -> IO (JSRef XPathNSResolver)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver ::
                 (MonadIO m, IsDocument self, IsNode nodeResolver) =>
                   self -> Maybe nodeResolver -> m (Maybe XPathNSResolver)
createNSResolver self nodeResolver
  = liftIO
      ((js_createNSResolver (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) nodeResolver))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" js_evaluate ::
        JSRef Document ->
          JSString ->
            JSRef Node ->
              JSRef XPathNSResolver ->
                Word -> JSRef XPathResult -> IO (JSRef XPathResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluate ::
         (MonadIO m, IsDocument self, ToJSString expression,
          IsNode contextNode) =>
           self ->
             expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self expression contextNode resolver type' inResult
  = liftIO
      ((js_evaluate (unDocument (toDocument self))
          (toJSString expression)
          (maybe jsNull (unNode . toNode) contextNode)
          (maybe jsNull unXPathNSResolver resolver)
          type'
          (maybe jsNull unXPathResult inResult))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"execCommand\"]($2, $3,\n$4) ? 1 : 0)" js_execCommand ::
        JSRef Document -> JSString -> Bool -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.execCommand Mozilla Document.execCommand documentation> 
execCommand ::
            (MonadIO m, IsDocument self, ToJSString command,
             ToJSString value) =>
              self -> command -> Bool -> value -> m Bool
execCommand self command userInterface value
  = liftIO
      (js_execCommand (unDocument (toDocument self)) (toJSString command)
         userInterface
         (toJSString value))
 
foreign import javascript unsafe
        "($1[\"queryCommandEnabled\"]($2) ? 1 : 0)" js_queryCommandEnabled
        :: JSRef Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandEnabled Mozilla Document.queryCommandEnabled documentation> 
queryCommandEnabled ::
                    (MonadIO m, IsDocument self, ToJSString command) =>
                      self -> command -> m Bool
queryCommandEnabled self command
  = liftIO
      (js_queryCommandEnabled (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandIndeterm\"]($2) ? 1 : 0)"
        js_queryCommandIndeterm :: JSRef Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandIndeterm Mozilla Document.queryCommandIndeterm documentation> 
queryCommandIndeterm ::
                     (MonadIO m, IsDocument self, ToJSString command) =>
                       self -> command -> m Bool
queryCommandIndeterm self command
  = liftIO
      (js_queryCommandIndeterm (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandState\"]($2) ? 1 : 0)" js_queryCommandState ::
        JSRef Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandState Mozilla Document.queryCommandState documentation> 
queryCommandState ::
                  (MonadIO m, IsDocument self, ToJSString command) =>
                    self -> command -> m Bool
queryCommandState self command
  = liftIO
      (js_queryCommandState (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandSupported\"]($2) ? 1 : 0)"
        js_queryCommandSupported :: JSRef Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandSupported Mozilla Document.queryCommandSupported documentation> 
queryCommandSupported ::
                      (MonadIO m, IsDocument self, ToJSString command) =>
                        self -> command -> m Bool
queryCommandSupported self command
  = liftIO
      (js_queryCommandSupported (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe "$1[\"queryCommandValue\"]($2)"
        js_queryCommandValue :: JSRef Document -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandValue Mozilla Document.queryCommandValue documentation> 
queryCommandValue ::
                  (MonadIO m, IsDocument self, ToJSString command,
                   FromJSString result) =>
                    self -> command -> m result
queryCommandValue self command
  = liftIO
      (fromJSString <$>
         (js_queryCommandValue (unDocument (toDocument self))
            (toJSString command)))
 
foreign import javascript unsafe "$1[\"getElementsByName\"]($2)"
        js_getElementsByName ::
        JSRef Document -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByName ::
                  (MonadIO m, IsDocument self, ToJSString elementName) =>
                    self -> elementName -> m (Maybe NodeList)
getElementsByName self elementName
  = liftIO
      ((js_getElementsByName (unDocument (toDocument self))
          (toJSString elementName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"elementFromPoint\"]($2, $3)"
        js_elementFromPoint ::
        JSRef Document -> Int -> Int -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementFromPoint Mozilla Document.elementFromPoint documentation> 
elementFromPoint ::
                 (MonadIO m, IsDocument self) =>
                   self -> Int -> Int -> m (Maybe Element)
elementFromPoint self x y
  = liftIO
      ((js_elementFromPoint (unDocument (toDocument self)) x y) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"caretRangeFromPoint\"]($2,\n$3)" js_caretRangeFromPoint ::
        JSRef Document -> Int -> Int -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint ::
                    (MonadIO m, IsDocument self) =>
                      self -> Int -> Int -> m (Maybe DOMRange)
caretRangeFromPoint self x y
  = liftIO
      ((js_caretRangeFromPoint (unDocument (toDocument self)) x y) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createCSSStyleDeclaration\"]()" js_createCSSStyleDeclaration
        :: JSRef Document -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCSSStyleDeclaration Mozilla Document.createCSSStyleDeclaration documentation> 
createCSSStyleDeclaration ::
                          (MonadIO m, IsDocument self) =>
                            self -> m (Maybe CSSStyleDeclaration)
createCSSStyleDeclaration self
  = liftIO
      ((js_createCSSStyleDeclaration (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getCSSCanvasContext\"]($2,\n$3, $4, $5)"
        js_getCSSCanvasContext ::
        JSRef Document ->
          JSString ->
            JSString -> Int -> Int -> IO (JSRef CanvasRenderingContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContext ::
                    (MonadIO m, IsDocument self, ToJSString contextId,
                     ToJSString name) =>
                      self ->
                        contextId -> name -> Int -> Int -> m (Maybe CanvasRenderingContext)
getCSSCanvasContext self contextId name width height
  = liftIO
      ((js_getCSSCanvasContext (unDocument (toDocument self))
          (toJSString contextId)
          (toJSString name)
          width
          height)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)" js_getElementsByClassName ::
        JSRef Document -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadIO m, IsDocument self, ToJSString tagname) =>
                         self -> tagname -> m (Maybe NodeList)
getElementsByClassName self tagname
  = liftIO
      ((js_getElementsByClassName (unDocument (toDocument self))
          (toJSString tagname))
         >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"hasFocus\"]() ? 1 : 0)"
        js_hasFocus :: JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus :: (MonadIO m, IsDocument self) => self -> m Bool
hasFocus self = liftIO (js_hasFocus (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        js_querySelector ::
        JSRef Document -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelector Mozilla Document.querySelector documentation> 
querySelector ::
              (MonadIO m, IsDocument self, ToJSString selectors) =>
                self -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftIO
      ((js_querySelector (unDocument (toDocument self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        js_querySelectorAll ::
        JSRef Document -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelectorAll Mozilla Document.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadIO m, IsDocument self, ToJSString selectors) =>
                   self -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftIO
      ((js_querySelectorAll (unDocument (toDocument self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitCancelFullScreen\"]()"
        js_webkitCancelFullScreen :: JSRef Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCancelFullScreen Mozilla Document.webkitCancelFullScreen documentation> 
webkitCancelFullScreen ::
                       (MonadIO m, IsDocument self) => self -> m ()
webkitCancelFullScreen self
  = liftIO (js_webkitCancelFullScreen (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        js_webkitExitFullscreen :: JSRef Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitExitFullscreen Mozilla Document.webkitExitFullscreen documentation> 
webkitExitFullscreen ::
                     (MonadIO m, IsDocument self) => self -> m ()
webkitExitFullscreen self
  = liftIO (js_webkitExitFullscreen (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"exitPointerLock\"]()"
        js_exitPointerLock :: JSRef Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.exitPointerLock Mozilla Document.exitPointerLock documentation> 
exitPointerLock :: (MonadIO m, IsDocument self) => self -> m ()
exitPointerLock self
  = liftIO (js_exitPointerLock (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"webkitGetNamedFlows\"]()"
        js_webkitGetNamedFlows ::
        JSRef Document -> IO (JSRef DOMNamedFlowCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlows ::
                    (MonadIO m, IsDocument self) =>
                      self -> m (Maybe DOMNamedFlowCollection)
webkitGetNamedFlows self
  = liftIO
      ((js_webkitGetNamedFlows (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createTouch\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12)"
        js_createTouch ::
        JSRef Document ->
          JSRef DOMWindow ->
            JSRef EventTarget ->
              Int ->
                Int ->
                  Int ->
                    Int -> Int -> Int -> Int -> Float -> Float -> IO (JSRef Touch)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouch ::
            (MonadIO m, IsDocument self, IsEventTarget target) =>
              self ->
                Maybe DOMWindow ->
                  Maybe target ->
                    Int ->
                      Int ->
                        Int ->
                          Int -> Int -> Int -> Int -> Float -> Float -> m (Maybe Touch)
createTouch self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftIO
      ((js_createTouch (unDocument (toDocument self))
          (maybe jsNull unDOMWindow window)
          (maybe jsNull (unEventTarget . toEventTarget) target)
          identifier
          pageX
          pageY
          screenX
          screenY
          webkitRadiusX
          webkitRadiusY
          webkitRotationAngle
          webkitForce)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createTouchList\"]()"
        js_createTouchList :: JSRef Document -> IO (JSRef TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList ::
                (MonadIO m, IsDocument self) => self -> m (Maybe TouchList)
createTouchList self
  = liftIO
      ((js_createTouchList (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"doctype\"]" js_getDoctype ::
        JSRef Document -> IO (JSRef DocumentType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctype ::
           (MonadIO m, IsDocument self) => self -> m (Maybe DocumentType)
getDoctype self
  = liftIO
      ((js_getDoctype (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"implementation\"]"
        js_getImplementation ::
        JSRef Document -> IO (JSRef DOMImplementation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.implementation Mozilla Document.implementation documentation> 
getImplementation ::
                  (MonadIO m, IsDocument self) => self -> m (Maybe DOMImplementation)
getImplementation self
  = liftIO
      ((js_getImplementation (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"documentElement\"]"
        js_getDocumentElement :: JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElement ::
                   (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getDocumentElement self
  = liftIO
      ((js_getDocumentElement (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"inputEncoding\"]"
        js_getInputEncoding :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.inputEncoding Mozilla Document.inputEncoding documentation> 
getInputEncoding ::
                 (MonadIO m, IsDocument self, FromJSString result) =>
                   self -> m result
getInputEncoding self
  = liftIO
      (fromJSString <$>
         (js_getInputEncoding (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"xmlEncoding\"]"
        js_getXmlEncoding :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncoding ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m result
getXmlEncoding self
  = liftIO
      (fromJSString <$>
         (js_getXmlEncoding (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"xmlVersion\"] = $2;"
        js_setXmlVersion :: JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
setXmlVersion ::
              (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setXmlVersion self val
  = liftIO
      (js_setXmlVersion (unDocument (toDocument self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"xmlVersion\"]"
        js_getXmlVersion :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersion ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m result
getXmlVersion self
  = liftIO
      (fromJSString <$>
         (js_getXmlVersion (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"xmlStandalone\"] = $2;"
        js_setXmlStandalone :: JSRef Document -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlStandalone Mozilla Document.xmlStandalone documentation> 
setXmlStandalone ::
                 (MonadIO m, IsDocument self) => self -> Bool -> m ()
setXmlStandalone self val
  = liftIO (js_setXmlStandalone (unDocument (toDocument self)) val)
 
foreign import javascript unsafe "($1[\"xmlStandalone\"] ? 1 : 0)"
        js_getXmlStandalone :: JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlStandalone Mozilla Document.xmlStandalone documentation> 
getXmlStandalone :: (MonadIO m, IsDocument self) => self -> m Bool
getXmlStandalone self
  = liftIO (js_getXmlStandalone (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"documentURI\"] = $2;"
        js_setDocumentURI :: JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
setDocumentURI ::
               (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setDocumentURI self val
  = liftIO
      (js_setDocumentURI (unDocument (toDocument self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"documentURI\"]"
        js_getDocumentURI :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
getDocumentURI ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m result
getDocumentURI self
  = liftIO
      (fromJSString <$>
         (js_getDocumentURI (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"defaultView\"]"
        js_getDefaultView :: JSRef Document -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultView ::
               (MonadIO m, IsDocument self) => self -> m (Maybe DOMWindow)
getDefaultView self
  = liftIO
      ((js_getDefaultView (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"styleSheets\"]"
        js_getStyleSheets :: JSRef Document -> IO (JSRef StyleSheetList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
getStyleSheets ::
               (MonadIO m, IsDocument self) => self -> m (Maybe StyleSheetList)
getStyleSheets self
  = liftIO
      ((js_getStyleSheets (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"contentType\"]"
        js_getContentType :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.contentType Mozilla Document.contentType documentation> 
getContentType ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m result
getContentType self
  = liftIO
      (fromJSString <$>
         (js_getContentType (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"title\"] = $2;" js_setTitle
        :: JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
setTitle ::
         (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setTitle self val
  = liftIO
      (js_setTitle (unDocument (toDocument self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
getTitle ::
         (MonadIO m, IsDocument self, FromJSString result) =>
           self -> m result
getTitle self
  = liftIO
      (fromJSString <$> (js_getTitle (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"referrer\"]" js_getReferrer
        :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.referrer Mozilla Document.referrer documentation> 
getReferrer ::
            (MonadIO m, IsDocument self, FromJSString result) =>
              self -> m result
getReferrer self
  = liftIO
      (fromJSString <$> (js_getReferrer (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"domain\"]" js_getDomain ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
getDomain ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m result
getDomain self
  = liftIO
      (fromJSString <$> (js_getDomain (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"URL\"]" js_getURL ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.URL Mozilla Document.URL documentation> 
getURL ::
       (MonadIO m, IsDocument self, FromJSString result) =>
         self -> m result
getURL self
  = liftIO
      (fromJSString <$> (js_getURL (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"cookie\"] = $2;"
        js_setCookie :: JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
setCookie ::
          (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setCookie self val
  = liftIO
      (js_setCookie (unDocument (toDocument self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"cookie\"]" js_getCookie ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
getCookie ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m result
getCookie self
  = liftIO
      (fromJSString <$> (js_getCookie (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"body\"] = $2;" js_setBody ::
        JSRef Document -> JSRef HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
setBody ::
        (MonadIO m, IsDocument self, IsHTMLElement val) =>
          self -> Maybe val -> m ()
setBody self val
  = liftIO
      (js_setBody (unDocument (toDocument self))
         (maybe jsNull (unHTMLElement . toHTMLElement) val))
 
foreign import javascript unsafe "$1[\"body\"]" js_getBody ::
        JSRef Document -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
getBody ::
        (MonadIO m, IsDocument self) => self -> m (Maybe HTMLElement)
getBody self
  = liftIO
      ((js_getBody (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"head\"]" js_getHead ::
        JSRef Document -> IO (JSRef HTMLHeadElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHead ::
        (MonadIO m, IsDocument self) => self -> m (Maybe HTMLHeadElement)
getHead self
  = liftIO
      ((js_getHead (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"images\"]" js_getImages ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.images Mozilla Document.images documentation> 
getImages ::
          (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getImages self
  = liftIO
      ((js_getImages (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"applets\"]" js_getApplets ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
getApplets ::
           (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getApplets self
  = liftIO
      ((js_getApplets (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"links\"]" js_getLinks ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
getLinks ::
         (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getLinks self
  = liftIO
      ((js_getLinks (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"forms\"]" js_getForms ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
getForms ::
         (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getForms self
  = liftIO
      ((js_getForms (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"anchors\"]" js_getAnchors ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
getAnchors ::
           (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getAnchors self
  = liftIO
      ((js_getAnchors (unDocument (toDocument self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lastModified\"]"
        js_getLastModified :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.lastModified Mozilla Document.lastModified documentation> 
getLastModified ::
                (MonadIO m, IsDocument self, FromJSString result) =>
                  self -> m result
getLastModified self
  = liftIO
      (fromJSString <$>
         (js_getLastModified (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
setCharset ::
           (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setCharset self val
  = liftIO
      (js_setCharset (unDocument (toDocument self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
getCharset ::
           (MonadIO m, IsDocument self, FromJSString result) =>
             self -> m result
getCharset self
  = liftIO
      (fromJSString <$> (js_getCharset (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"defaultCharset\"]"
        js_getDefaultCharset :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultCharset Mozilla Document.defaultCharset documentation> 
getDefaultCharset ::
                  (MonadIO m, IsDocument self, FromJSString result) =>
                    self -> m result
getDefaultCharset self
  = liftIO
      (fromJSString <$>
         (js_getDefaultCharset (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
getReadyState ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m result
getReadyState self
  = liftIO
      (fromJSString <$>
         (js_getReadyState (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"characterSet\"]"
        js_getCharacterSet :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
getCharacterSet ::
                (MonadIO m, IsDocument self, FromJSString result) =>
                  self -> m result
getCharacterSet self
  = liftIO
      (fromJSString <$>
         (js_getCharacterSet (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"preferredStylesheetSet\"]"
        js_getPreferredStylesheetSet :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSet ::
                          (MonadIO m, IsDocument self, FromJSString result) =>
                            self -> m result
getPreferredStylesheetSet self
  = liftIO
      (fromJSString <$>
         (js_getPreferredStylesheetSet (unDocument (toDocument self))))
 
foreign import javascript unsafe
        "$1[\"selectedStylesheetSet\"] = $2;" js_setSelectedStylesheetSet
        :: JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
setSelectedStylesheetSet ::
                         (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setSelectedStylesheetSet self val
  = liftIO
      (js_setSelectedStylesheetSet (unDocument (toDocument self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"selectedStylesheetSet\"]"
        js_getSelectedStylesheetSet :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSet ::
                         (MonadIO m, IsDocument self, FromJSString result) =>
                           self -> m result
getSelectedStylesheetSet self
  = liftIO
      (fromJSString <$>
         (js_getSelectedStylesheetSet (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"activeElement\"]"
        js_getActiveElement :: JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.activeElement Mozilla Document.activeElement documentation> 
getActiveElement ::
                 (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getActiveElement self
  = liftIO
      ((js_getActiveElement (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"compatMode\"]"
        js_getCompatMode :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.compatMode Mozilla Document.compatMode documentation> 
getCompatMode ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m result
getCompatMode self
  = liftIO
      (fromJSString <$>
         (js_getCompatMode (unDocument (toDocument self))))
 
foreign import javascript unsafe
        "($1[\"webkitIsFullScreen\"] ? 1 : 0)" js_getWebkitIsFullScreen ::
        JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitIsFullScreen Mozilla Document.webkitIsFullScreen documentation> 
getWebkitIsFullScreen ::
                      (MonadIO m, IsDocument self) => self -> m Bool
getWebkitIsFullScreen self
  = liftIO (js_getWebkitIsFullScreen (unDocument (toDocument self)))
 
foreign import javascript unsafe
        "($1[\"webkitFullScreenKeyboardInputAllowed\"] ? 1 : 0)"
        js_getWebkitFullScreenKeyboardInputAllowed ::
        JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullScreenKeyboardInputAllowed Mozilla Document.webkitFullScreenKeyboardInputAllowed documentation> 
getWebkitFullScreenKeyboardInputAllowed ::
                                        (MonadIO m, IsDocument self) => self -> m Bool
getWebkitFullScreenKeyboardInputAllowed self
  = liftIO
      (js_getWebkitFullScreenKeyboardInputAllowed
         (unDocument (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"webkitCurrentFullScreenElement\"]"
        js_getWebkitCurrentFullScreenElement ::
        JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCurrentFullScreenElement Mozilla Document.webkitCurrentFullScreenElement documentation> 
getWebkitCurrentFullScreenElement ::
                                  (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getWebkitCurrentFullScreenElement self
  = liftIO
      ((js_getWebkitCurrentFullScreenElement
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"webkitFullscreenEnabled\"] ? 1 : 0)"
        js_getWebkitFullscreenEnabled :: JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenEnabled Mozilla Document.webkitFullscreenEnabled documentation> 
getWebkitFullscreenEnabled ::
                           (MonadIO m, IsDocument self) => self -> m Bool
getWebkitFullscreenEnabled self
  = liftIO
      (js_getWebkitFullscreenEnabled (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"webkitFullscreenElement\"]"
        js_getWebkitFullscreenElement ::
        JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenElement Mozilla Document.webkitFullscreenElement documentation> 
getWebkitFullscreenElement ::
                           (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getWebkitFullscreenElement self
  = liftIO
      ((js_getWebkitFullscreenElement (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"pointerLockElement\"]"
        js_getPointerLockElement :: JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.pointerLockElement Mozilla Document.pointerLockElement documentation> 
getPointerLockElement ::
                      (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getPointerLockElement self
  = liftIO
      ((js_getPointerLockElement (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"visibilityState\"]"
        js_getVisibilityState :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.visibilityState Mozilla Document.visibilityState documentation> 
getVisibilityState ::
                   (MonadIO m, IsDocument self, FromJSString result) =>
                     self -> m result
getVisibilityState self
  = liftIO
      (fromJSString <$>
         (js_getVisibilityState (unDocument (toDocument self))))
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        js_getHidden :: JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hidden Mozilla Document.hidden documentation> 
getHidden :: (MonadIO m, IsDocument self) => self -> m Bool
getHidden self
  = liftIO (js_getHidden (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"securityPolicy\"]"
        js_getSecurityPolicy ::
        JSRef Document -> IO (JSRef DOMSecurityPolicy)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.securityPolicy Mozilla Document.securityPolicy documentation> 
getSecurityPolicy ::
                  (MonadIO m, IsDocument self) => self -> m (Maybe DOMSecurityPolicy)
getSecurityPolicy self
  = liftIO
      ((js_getSecurityPolicy (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"currentScript\"]"
        js_getCurrentScript ::
        JSRef Document -> IO (JSRef HTMLScriptElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScript ::
                 (MonadIO m, IsDocument self) => self -> m (Maybe HTMLScriptElement)
getCurrentScript self
  = liftIO
      ((js_getCurrentScript (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.origin Mozilla Document.origin documentation> 
getOrigin ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m result
getOrigin self
  = liftIO
      (fromJSString <$> (js_getOrigin (unDocument (toDocument self))))
#else
module GHCJS.DOM.Document (
  module Graphics.UI.Gtk.WebKit.DOM.Document
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Document
#endif
