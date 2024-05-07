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

/* install/view/template/upgrade/upgrade.twig */
class __TwigTemplate_be0be0a559e40549e03805d256cf6d97 extends Template
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
        echo ($context["header"] ?? null);
        echo "
<div id=\"content\">
  <div class=\"page-header\">
    <div class=\"container\">
      <div class=\"float-right\">";
        // line 5
        echo ($context["language"] ?? null);
        echo "</div>
      <h1>";
        // line 6
        echo ($context["heading_title"] ?? null);
        echo "</h1>
    </div>
  </div>
  <div class=\"container\">
    ";
        // line 10
        if (($context["error_warning"] ?? null)) {
            // line 11
            echo "      <div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ";
            echo ($context["error_warning"] ?? null);
            echo "</div>
    ";
        }
        // line 13
        echo "    <div class=\"card\">
      <div class=\"card-header\"><i class=\"fab fa-opencart\"></i>&nbsp;&nbsp;&nbsp;";
        // line 14
        echo ($context["text_upgrade"] ?? null);
        echo "</div>
      <div class=\"card-body\">
        <fieldset>
          <legend>";
        // line 17
        echo ($context["text_server"] ?? null);
        echo "</legend>
          <ol>
            <li>";
        // line 19
        echo ($context["text_error"] ?? null);
        echo "</li>
            <li>";
        // line 20
        echo ($context["text_clear"] ?? null);
        echo "</li>
            <li>";
        // line 21
        echo ($context["text_admin"] ?? null);
        echo "</li>
            <li>";
        // line 22
        echo ($context["text_user"] ?? null);
        echo "</li>
            <li>";
        // line 23
        echo ($context["text_setting"] ?? null);
        echo "</li>
            <li>";
        // line 24
        echo ($context["text_store"] ?? null);
        echo "</li>
          </ol>
        </fieldset>
        <fieldset>
          <legend>";
        // line 28
        echo ($context["text_steps"] ?? null);
        echo "</legend>
          <div class=\"form-group\">
            <label class=\"col-sm-2 control-label\">";
        // line 30
        echo ($context["entry_progress"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <div class=\"progress\">
                <div id=\"progress-bar\" class=\"progress-bar\" style=\"width: 0%;\"></div>
              </div>
              <div id=\"progress-text\"></div>
            </div>
          </div>
        </fieldset>
        <div class=\"row mt-3\">
          <div class=\"col text-right\"><button type=\"button\" id=\"button-continue\" data-loading=\"";
        // line 40
        echo ($context["text_loading"] ?? null);
        echo "\" class=\"btn btn-primary\">";
        echo ($context["button_continue"] ?? null);
        echo "</button></div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type=\"text/javascript\"><!--
\$('#button-continue').on('click', function () {
    var step = 1;

    \$('#progress-bar').addClass('progress-bar-success').css('width', '0%').removeClass('progress-bar-danger');
    \$('#progress-text').html('');

    var next = 'index.php?route=upgrade/upgrade_1';

    var upgrade = function () {
        return \$.ajax({
            url: next,
            dataType: 'json',
            beforeSend: function () {
                \$('#button-continue').prop('disabled', true).addClass('loading');
            },
            complete: function () {
                \$('#button-continue').prop('disabled', false).removeClass('loading');
            },
            success: function (json) {
                if (json['redirect']) {
                    location = json['redirect'];
                }

                if (json['error']) {
                    \$('#progress-bar').addClass('progress-bar-danger');
                    \$('#progress-text').html('<div class=\"text-danger\">' + json['error'] + '</div>');
                }

                if (json['text']) {
                    \$('#progress-text').html('<span class=\"text-success\">' + json['text'] + '</span>');
                }

                if (json['success']) {
                    \$('#progress-text').html('<span class=\"text-success\">' + json['success'] + '</span>');
                }

                \$('#progress-bar').css('width', Math.round((step / ";
        // line 83
        echo ($context["total"] ?? null);
        echo ") * 100) + '%');

                step++;

                if (json['next']) {
                    next = json['next'];

                    chain.attach(upgrade);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
            }
        });
    }

    chain.attach(upgrade);
});
//--></script>
";
        // line 102
        echo ($context["footer"] ?? null);
    }

    public function getTemplateName()
    {
        return "install/view/template/upgrade/upgrade.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  192 => 102,  170 => 83,  122 => 40,  109 => 30,  104 => 28,  97 => 24,  93 => 23,  89 => 22,  85 => 21,  81 => 20,  77 => 19,  72 => 17,  66 => 14,  63 => 13,  57 => 11,  55 => 10,  48 => 6,  44 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "install/view/template/upgrade/upgrade.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\install\\view\\template\\upgrade\\upgrade.twig");
    }
}
