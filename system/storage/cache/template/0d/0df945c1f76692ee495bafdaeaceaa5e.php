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

/* extension/blogger/catalog/view/template/information/blogger.twig */
class __TwigTemplate_cd1211dd163f6e395f5f9fb9aa23440b extends Template
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
        echo "<div class=\"blog-header\">
";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>

<div class=\"pb-30\">

 <!-- Breadcrumb -->
 <div class=\"blog-page-bg\">
    <div class=\"container\">
<div class=\"d-flex justify-content-between align-items-center back-page\">
  <div class=\"\">
  <div class=\"back-to-home\">
      <a href=\"";
        // line 13
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span> ";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
   </div>  
  </div>
  <div class=\"\">
    <ul class=\"breadcrumb \">
      ";
        // line 18
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 19
            echo "        <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 19);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 19);
            echo "</a></li>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 21
        echo "    </ul>  
  </div> 
</div>
<div class=\"blog-ctn\">
    <h2>Top sneakers trends for 2022 year</h2>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard...</p>
    <a href=\"#\" class=\"btn btn-primary read_more\">";
        // line 27
        echo ($context["text_read_more"] ?? null);
        echo "</a>
</div>
</div>
</div>
<div class=\"container\">
<!-- Breadcrumb end -->
    <div class=\"\">
        ";
        // line 34
        echo ($context["column_left"] ?? null);
        echo "
        ";
        // line 35
        if ((($context["column_left"] ?? null) && ($context["column_right"] ?? null))) {
            // line 36
            echo "            ";
            $context["class"] = "col-sm-6";
            // line 37
            echo "        ";
        } elseif ((($context["column_left"] ?? null) || ($context["column_right"] ?? null))) {
            // line 38
            echo "            ";
            $context["class"] = "col-sm-9";
            // line 39
            echo "        ";
        } else {
            // line 40
            echo "            ";
            $context["class"] = "col-sm-12";
            // line 41
            echo "        ";
        }
        // line 42
        echo "
        <div id=\"content\" class=\"";
        // line 43
        echo ($context["class"] ?? null);
        echo " workdo-single-blog acpage\">
            ";
        // line 44
        echo ($context["content_top"] ?? null);
        echo "
            <div class=\"row\">
            <div class=\"col-sm-6 col-md-8 col-lg-8 col-xs-12 blogsticky\">
            
            <div class=\"workdo-single-blog\">
                 <div class=\"sngblog\">
                    <h3 class=\"headingpage\">";
        // line 50
        echo ($context["heading_title"] ?? null);
        echo "</h3>
                    <p>";
        // line 51
        echo ($context["description"] ?? null);
        echo "</p>
                 </div>
                ";
        // line 53
        if (twig_get_attribute($this->env, $this->source, ($context["blogs"] ?? null), "image", [], "any", false, false, false, 53)) {
            // line 54
            echo "                    <div class=\"workdo-blog-image\">
                        <img src=\"";
            // line 55
            echo twig_get_attribute($this->env, $this->source, ($context["blogs"] ?? null), "image", [], "any", false, false, false, 55);
            echo "\" alt=\"";
            echo ($context["heading_title"] ?? null);
            echo "\" title=\"";
            echo ($context["heading_title"] ?? null);
            echo "\" class=\"img-thumbnail\" />
                    </div>
                ";
        }
        // line 58
        echo "                   
                </div>
            </div>
            <div class=\"col-sm-6 col-md-4 col-lg-4 col-xs-12 blogal\">
                ";
        // line 62
        if (($context["success"] ?? null)) {
            // line 63
            echo "                    <div class=\"alert alert-success\">
                        <i class=\"fa fa-check-circle\"></i> ";
            // line 64
            echo ($context["success"] ?? null);
            echo "
                        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button>
                    </div>
                ";
        }
        // line 68
        echo "
                ";
        // line 69
        if (($context["blog_comments"] ?? null)) {
            // line 70
            echo "                    <h3 class=\"blog-comment\">";
            echo ($context["text_your_comments"] ?? null);
            echo "</h3>
                    <div class=\"bcomment\">
                    ";
            // line 72
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["blog_comments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["blog_comment"]) {
                // line 73
                echo "                        <div class=\"view-comment\">
                            <div class=\"blogu\"><i class=\"fa fa-user\"></i><span>";
                // line 74
                echo twig_get_attribute($this->env, $this->source, $context["blog_comment"], "author", [], "any", false, false, false, 74);
                echo "</span></div>
                            <div class=\"date\"><i class=\"fa fa-calendar\"></i><span>";
                // line 75
                echo twig_get_attribute($this->env, $this->source, $context["blog_comment"], "date_added", [], "any", false, false, false, 75);
                echo "</span></div>
                            <div class=\"comm\"><i class=\"fa fa-comments-o pull-left\"></i><div class=\"wco\">";
                // line 76
                echo twig_get_attribute($this->env, $this->source, $context["blog_comment"], "comment", [], "any", false, false, false, 76);
                echo "</div></div>
                        </div>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['blog_comment'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 79
            echo "                </div>
                ";
        }
        // line 81
        echo "
                ";
        // line 82
        if (($context["allow_comments"] ?? null)) {
            // line 83
            echo "                    <div class=\"block-title\">
                        <h3>
                           ";
            // line 85
            echo ($context["button_comment_add"] ?? null);
            echo "
                        </h3>
                    </div>
                    <div class=\"panel panel-default\" id=\"add-comment-blog\" style=\"margin-bottom: 10px;\">
                        ";
            // line 89
            if ((($context["login_required"] ?? null) &&  !($context["is_logged"] ?? null))) {
                // line 90
                echo "                            <h4 class=\"text-center\">";
                echo ($context["text_login_required"] ?? null);
                echo "</h4>
                        ";
            } else {
                // line 92
                echo "                            <form action=\"";
                echo ($context["action"] ?? null);
                echo "\" method=\"post\" enctype=\"multipart/form-data\" class=\"form-horizontal\">
                                <div class=\"form-group required\" style=\"margin-top: 10px;\">
                                    <div>
                                        <input type=\"text\" name=\"author\" value=\"";
                // line 95
                echo ($context["author"] ?? null);
                echo "\" id=\"input-author\" placeholder=\"";
                echo ($context["entry_author"] ?? null);
                echo "\" class=\"form-control\" />
                                        ";
                // line 96
                if (($context["error_author"] ?? null)) {
                    // line 97
                    echo "                                            <div class=\"text-danger\">";
                    echo ($context["error_author"] ?? null);
                    echo "</div>
                                        ";
                }
                // line 99
                echo "                                    </div>
                                </div>
                                <div class=\"form-group required\" style=\"margin-top: 10px;\">
                                    <div>
                                        <input type=\"text\" name=\"email\" value=\"";
                // line 103
                echo ($context["email"] ?? null);
                echo "\" id=\"input-email\" placeholder=\"";
                echo ($context["entry_email"] ?? null);
                echo "\" class=\"form-control\" />
                                        ";
                // line 104
                if (($context["error_email"] ?? null)) {
                    // line 105
                    echo "                                            <div class=\"text-danger\">";
                    echo ($context["error_email"] ?? null);
                    echo "</div>
                                        ";
                }
                // line 107
                echo "                                    </div>
                                </div>
                                <div class=\"form-group\" style=\"margin-top: 10px;\">
                                    <div>
                                        <textarea name=\"comment\" rows=\"10\" id=\"input-comment\" class=\"form-control\"  value=\"";
                // line 111
                echo ($context["entry_comment"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_comment"] ?? null);
                echo "\"/>
                                        </textarea>
                                        ";
                // line 113
                if (($context["error_comment"] ?? null)) {
                    // line 114
                    echo "                                            <div class=\"text-danger\">
                                                ";
                    // line 115
                    echo ($context["error_comment"] ?? null);
                    echo "
                                            </div>
                                        ";
                }
                // line 118
                echo "                                    </div>
                                </div>
                                ";
                // line 120
                echo ($context["captcha"] ?? null);
                echo "
                                <input type=\"hidden\" name=\"auto_approve\" value=\"";
                // line 121
                echo ($context["auto_approve"] ?? null);
                echo "\" />
                                <div class=\"buttons text-left\">
                                    <input class=\"btn btn-primary\" type=\"submit\" value=\"";
                // line 123
                echo ($context["button_submit"] ?? null);
                echo "\" data-toggle=\"tooltip\" title=\"";
                echo ($context["button_submit"] ?? null);
                echo "\" />
                                </div>
                            </form>
                        ";
            }
            // line 127
            echo "                    </div>
                        ";
            // line 135
            echo "                ";
        }
        // line 136
        echo "            </div>
        </div>
            </div>
                 </div>
            ";
        // line 140
        echo ($context["content_bottom"] ?? null);
        echo "
        </div>
        ";
        // line 142
        echo ($context["column_right"] ?? null);
        echo "
    </div>
</div>
</div>
";
        // line 146
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "extension/blogger/catalog/view/template/information/blogger.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  353 => 146,  346 => 142,  341 => 140,  335 => 136,  332 => 135,  329 => 127,  320 => 123,  315 => 121,  311 => 120,  307 => 118,  301 => 115,  298 => 114,  296 => 113,  289 => 111,  283 => 107,  277 => 105,  275 => 104,  269 => 103,  263 => 99,  257 => 97,  255 => 96,  249 => 95,  242 => 92,  236 => 90,  234 => 89,  227 => 85,  223 => 83,  221 => 82,  218 => 81,  214 => 79,  205 => 76,  201 => 75,  197 => 74,  194 => 73,  190 => 72,  184 => 70,  182 => 69,  179 => 68,  172 => 64,  169 => 63,  167 => 62,  161 => 58,  151 => 55,  148 => 54,  146 => 53,  141 => 51,  137 => 50,  128 => 44,  124 => 43,  121 => 42,  118 => 41,  115 => 40,  112 => 39,  109 => 38,  106 => 37,  103 => 36,  101 => 35,  97 => 34,  87 => 27,  79 => 21,  68 => 19,  64 => 18,  54 => 13,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/blogger/catalog/view/template/information/blogger.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/extension/blogger/catalog/view/template/information/blogger.twig");
    }
}
