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

/* catalog/view/template/common/footer.twig */
class __TwigTemplate_cfaad0985a904179a3d445c348dc3ac0 extends Template
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
        echo "</main>
<footer>
  <div class=\"footer-top\">
</div>

  
  <div class=\"middle-footer\">
    <div class=\"container\">
    <div class=\"row\">
      <div class=\"col-md-3 col-sm-12 logo-lborder\">
        <div id=\"logo\">
          ";
        // line 12
        if (($context["logo"] ?? null)) {
            // line 13
            echo "            <a href=\"";
            echo ($context["home"] ?? null);
            echo "\"><img src=\"";
            echo ($context["logo"] ?? null);
            echo "\" title=\"";
            echo ($context["name"] ?? null);
            echo "\" alt=\"";
            echo ($context["name"] ?? null);
            echo "\" class=\"img-responsive img-fluid\"/></a>
          ";
        } else {
            // line 15
            echo "            <h1><a href=\"";
            echo ($context["home"] ?? null);
            echo "\">";
            echo ($context["name"] ?? null);
            echo "</a></h1>
          ";
        }
        // line 17
        echo "        </div>
          ";
        // line 18
        echo ($context["footer_left"] ?? null);
        echo "
      </div>
      ";
        // line 20
        if (($context["informations"] ?? null)) {
            // line 21
            echo "        <div class=\"col-md-3 col-sm-12 lborder\">
          <h5>";
            // line 22
            echo ($context["text_information"] ?? null);
            echo "
            <button type=\"button\" class=\"btn toggle collapsed\" data-bs-toggle=\"collapse\" data-bs-target=\"#info\"></button>
          </h5>
          <div id=\"info\" class=\"collapse footer-collapse\">
          <ul class=\"list-unstyled\">
            ";
            // line 27
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["informations"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["information"]) {
                // line 28
                echo "              <li><a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["information"], "href", [], "any", false, false, false, 28);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["information"], "title", [], "any", false, false, false, 28);
                echo "</a></li>
             
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['information'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 31
            echo "             <li><a href=\"";
            echo ($context["manufacturer"] ?? null);
            echo "\">";
            echo ($context["text_manufacturer"] ?? null);
            echo "</a></li>
          </ul>
        </div>
        </div>
      ";
        }
        // line 36
        echo "
      <div class=\"col-md-3 col-sm-12 ser lborder\">
        <h5>";
        // line 38
        echo ($context["text_service"] ?? null);
        echo "
          <button type=\"button\" class=\"btn toggle collapsed\" data-bs-toggle=\"collapse\" data-bs-target=\"#service\"></button>
        </h5>
        <div id=\"service\" class=\"collapse footer-collapse\">
        <ul class=\"list-unstyled\">
          <li><a href=\"";
        // line 43
        echo ($context["contact"] ?? null);
        echo "\">";
        echo ($context["text_contact"] ?? null);
        echo "</a></li>
          <li><a href=\"";
        // line 44
        echo ($context["return"] ?? null);
        echo "\">";
        echo ($context["text_return"] ?? null);
        echo "</a></li>
          ";
        // line 45
        if (($context["gdpr"] ?? null)) {
            // line 46
            echo "            <li><a href=\"";
            echo ($context["gdpr"] ?? null);
            echo "\">";
            echo ($context["text_gdpr"] ?? null);
            echo "</a></li>
          ";
        }
        // line 48
        echo "          <li><a href=\"";
        echo ($context["sitemap"] ?? null);
        echo "\">";
        echo ($context["text_sitemap"] ?? null);
        echo "</a></li>
           <li><a href=\"";
        // line 49
        echo ($context["voucher"] ?? null);
        echo "\">";
        echo ($context["text_voucher"] ?? null);
        echo "</a></li>
          ";
        // line 50
        if (($context["affiliate"] ?? null)) {
            // line 51
            echo "            <li><a href=\"";
            echo ($context["affiliate"] ?? null);
            echo "\">";
            echo ($context["text_affiliate"] ?? null);
            echo "</a></li>
          ";
        }
        // line 53
        echo "        </ul>
      </div>
      </div>

      <div class=\"col-md-3 col-sm-12 lborder\">
        <h5>";
        // line 58
        echo ($context["text_account"] ?? null);
        echo "
          <button type=\"button\" class=\"btn toggle collapsed\" data-bs-toggle=\"collapse\" data-bs-target=\"#account\"></button>
        </h5>
        <div id=\"account\" class=\"collapse footer-collapse\">
        <ul class=\"list-unstyled\">
          <li><a href=\"";
        // line 63
        echo ($context["account"] ?? null);
        echo "\">";
        echo ($context["text_account"] ?? null);
        echo "</a></li>
          <li><a href=\"";
        // line 64
        echo ($context["order"] ?? null);
        echo "\">";
        echo ($context["text_order"] ?? null);
        echo "</a></li>
          <li><a href=\"";
        // line 65
        echo ($context["wishlist"] ?? null);
        echo "\">";
        echo ($context["text_wishlist"] ?? null);
        echo "</a></li>
          <li><a href=\"";
        // line 66
        echo ($context["newsletter"] ?? null);
        echo "\">";
        echo ($context["text_newsletter"] ?? null);
        echo "</a></li>
          <li><a href=\"";
        // line 67
        echo ($context["special"] ?? null);
        echo "\">";
        echo ($context["text_special"] ?? null);
        echo "</a></li>
          <li><a href=\"";
        // line 68
        echo ($context["contact"] ?? null);
        echo "\">";
        echo ($context["text_contact"] ?? null);
        echo "</a></li>
        </ul>
      </div>
      </div>

     ";
        // line 76
        echo "    </div>
     </div>
     <div class=\"container middle-end\">
      <div class=\"row\">
        <div class=\"col-md-4 copy text-start\">
        <p>";
        // line 81
        echo ($context["powered"] ?? null);
        echo "</p> 
        </div>
        <div class=\"col-md-4 col-xs-12\">
          ";
        // line 84
        echo ($context["footer_right"] ?? null);
        echo "
        </div>
       <div class=\"col-md-4 text-end f-link\">
        <div class=\"foot-link\">
          <a href=\"#\">about us</a>
          <a href=\"#\">career</a>
          <a href=\"#\">support</a>
          <a href=\"#\">information</a>
        </div>
       </div>
      </div>
      </div>
</div>
  
  <div class=\"foot-bot\">
  
  </div>

    <!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

</footer>
<a href=\"\" id=\"scroll\" title=\"Scroll to Top\" style=\"display: none;\">
<i class=\"fa fa-angle-double-up\"></i>
</a>
";
        // line 111
        echo ($context["cookie"] ?? null);
        echo "
<script src=\"";
        // line 112
        echo ($context["bootstrap"] ?? null);
        echo "\" type=\"text/javascript\"></script>
";
        // line 113
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["scripts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["script"]) {
            // line 114
            echo "  <script src=\"";
            echo twig_get_attribute($this->env, $this->source, $context["script"], "href", [], "any", false, false, false, 114);
            echo "\" type=\"text/javascript\"></script>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['script'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 116
        echo "
<!-- product qty + - -->
<script type=\"text/javascript\">
  
\$('.add').click(function () {   
  var th = \$(this).closest('.wrap').find('.count');     
  th.val(+th.val() + 1);
});
\$('.sub').click(function () {
  var th = \$(this).closest('.wrap').find('.count');     
      if (th.val() > 1) th.val(+th.val() - 1);
});
</script>
<!-- product qty + - end -->
</body></html>
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/common/footer.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  296 => 116,  287 => 114,  283 => 113,  279 => 112,  275 => 111,  245 => 84,  239 => 81,  232 => 76,  222 => 68,  216 => 67,  210 => 66,  204 => 65,  198 => 64,  192 => 63,  184 => 58,  177 => 53,  169 => 51,  167 => 50,  161 => 49,  154 => 48,  146 => 46,  144 => 45,  138 => 44,  132 => 43,  124 => 38,  120 => 36,  109 => 31,  97 => 28,  93 => 27,  85 => 22,  82 => 21,  80 => 20,  75 => 18,  72 => 17,  64 => 15,  52 => 13,  50 => 12,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/common/footer.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/common/footer.twig");
    }
}
