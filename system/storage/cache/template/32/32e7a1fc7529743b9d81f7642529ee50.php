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

/* catalog/view/template/product/review_list.twig */
class __TwigTemplate_b388b8da61bc48902a99eb89bd56f52e extends Template
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
        if (($context["reviews"] ?? null)) {
            // line 2
            echo "  ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["reviews"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["review"]) {
                // line 3
                echo "    <div class=\"custreview\">
      <div class=\"rating\">
            ";
                // line 5
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(range(1, 5));
                foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                    // line 6
                    echo "              ";
                    if ((twig_get_attribute($this->env, $this->source, $context["review"], "rating", [], "any", false, false, false, 6) < $context["i"])) {
                        // line 7
                        echo "                <span class=\"fa-stack\"><i class=\"fa-regular fa-star fa-stack-1x\"></i></span>
              ";
                    } else {
                        // line 9
                        echo "                <span class=\"fa-stack\"><i class=\"fa-solid fa-star fa-stack-1x\"></i><i class=\"fa-regular fa-star fa-stack-1x\"></i></span>
              ";
                    }
                    // line 11
                    echo "            ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 12
                echo "      </div>
      <div class=\"crspc\">
        <span><strong>";
                // line 14
                echo twig_get_attribute($this->env, $this->source, $context["review"], "author", [], "any", false, false, false, 14);
                echo "</strong></span>
        <span class=\"rsep\">|</span>
        <span class=\"rdate\">";
                // line 16
                echo twig_get_attribute($this->env, $this->source, $context["review"], "date_added", [], "any", false, false, false, 16);
                echo "</span>
      </div>
      <p>";
                // line 18
                echo twig_get_attribute($this->env, $this->source, $context["review"], "text", [], "any", false, false, false, 18);
                echo "</p>
      
    </div>
  ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['review'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 22
            echo "  <div class=\"text-end\">";
            echo ($context["pagination"] ?? null);
            echo "</div>
";
        } else {
            // line 24
            echo "  <p>";
            echo ($context["text_no_results"] ?? null);
            echo "</p>
";
        }
    }

    public function getTemplateName()
    {
        return "catalog/view/template/product/review_list.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  99 => 24,  93 => 22,  83 => 18,  78 => 16,  73 => 14,  69 => 12,  63 => 11,  59 => 9,  55 => 7,  52 => 6,  48 => 5,  44 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/product/review_list.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/product/review_list.twig");
    }
}
