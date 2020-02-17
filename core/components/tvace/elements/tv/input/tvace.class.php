<?php
if(!class_exists('TemplateSelectInputRender')) {
    class TemplateSelectInputRender extends modTemplateVarInputRender {
        public function getTemplate() {
            return $this->modx->getOption('core_path').'components/tvace/elements/tv/input/tpl/tvace.tpl';
        }
        public function process($value,array $params = array()) {
        }
    }
}
return 'TemplateSelectInputRender';
