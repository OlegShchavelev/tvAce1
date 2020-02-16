<?php

$corePath = $modx->getOption('core_path',null,MODX_CORE_PATH).'components/tvace/';

switch ($modx->event->name) {
    case 'OnTVInputRenderList':
        $modx->lexicon->load('tvace:tv');
        $modx->event->output($corePath.'tv/input/');
        break;
    case 'OnManagerPageBeforeRender':
        break;
}
