<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* extension/opencart/catalog/view/template/module/html.twig */
class __TwigTemplate_1aa1b957e78b87dc60b4c54d29dd3f71 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<div>
\t";
        // line 2
        if (($context["heading_title"] ?? null)) {
            // line 3
            echo "\t\t<h2>";
            echo ($context["heading_title"] ?? null);
            echo "</h2>
\t";
        }
        // line 5
        echo "\t";
        echo ($context["html"] ?? null);
        echo "
</div>
";
    }

    public function getTemplateName()
    {
        return "extension/opencart/catalog/view/template/module/html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  48 => 5,  42 => 3,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/opencart/catalog/view/template/module/html.twig", "C:\\wamp64\\www\\kuldeep\\opencart\\gift\\extension\\opencart\\catalog\\view\\template\\module\\html.twig");
    }
}
