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

/* catalog/view/template/product/review.twig */
class __TwigTemplate_a86eb1dedc237aa835043dd442e74fb9 extends Template
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
        echo "<form id=\"form-review\">
  <div id=\"review\">";
        // line 2
        echo ($context["list"] ?? null);
        echo "</div>
  <h2>";
        // line 3
        echo ($context["text_write"] ?? null);
        echo "</h2>
  ";
        // line 4
        if (($context["review_guest"] ?? null)) {
            // line 5
            echo "    <div class=\"mb-3 required\">
      <label for=\"input-name\" class=\"form-label\">";
            // line 6
            echo ($context["entry_name"] ?? null);
            echo "</label>
      <input type=\"text\" name=\"name\" value=\"";
            // line 7
            echo ($context["customer_name"] ?? null);
            echo "\" id=\"input-name\" class=\"form-control\"/>
      <div id=\"error-name\" class=\"invalid-feedback\"></div>
    </div>
    <div class=\"mb-3 required\">
      <label for=\"input-text\" class=\"form-label\">";
            // line 11
            echo ($context["entry_review"] ?? null);
            echo "</label>
      <textarea name=\"text\" rows=\"5\" id=\"input-text\" class=\"form-control\"></textarea>
      <div id=\"error-text\" class=\"invalid-feedback\"></div>
      <div class=\"invalid-feedback\">";
            // line 14
            echo ($context["text_note"] ?? null);
            echo "</div>
    </div>
    <div class=\"mb-3 required radi\">
      <label class=\"form-label\">";
            // line 17
            echo ($context["entry_rating"] ?? null);
            echo "</label>
       <div class=\"form-rating\">

                      <div class=\"form-rating-container pull-left\">
                        <input id=\"rating-5\" type=\"radio\" name=\"rating\" value=\"5\" />
                        <label class=\"fa fa-stack pull-right\" for=\"rating-5\">
                          <i class=\"fa fa-star fa-stack-1x\"></i>
                          <i class=\"fa fa-star-o fa-stack-1x\"></i>
                        </label>
                        <input id=\"rating-4\" type=\"radio\" name=\"rating\" value=\"4\" />
                        <label class=\"fa fa-stack pull-right\" for=\"rating-4\">
                          <i class=\"fa fa-star fa-stack-1x\"></i>
                          <i class=\"fa fa-star-o fa-stack-1x\"></i>
                        </label>
                        <input id=\"rating-3\" type=\"radio\" name=\"rating\" value=\"3\" />
                        <label class=\"fa fa-stack pull-right\" for=\"rating-3\">
                          <i class=\"fa fa-star fa-stack-1x\"></i>
                          <i class=\"fa fa-star-o fa-stack-1x\"></i>
                        </label>
                        <input id=\"rating-2\" type=\"radio\" name=\"rating\" value=\"2\" />
                        <label class=\"fa fa-stack pull-right\" for=\"rating-2\">
                          <i class=\"fa fa-star fa-stack-1x\"></i>
                          <i class=\"fa fa-star-o fa-stack-1x\"></i>
                        </label>
                        <input id=\"rating-1\" type=\"radio\" name=\"rating\" value=\"1\" />
                        <label class=\"fa fa-stack pull-right\" for=\"rating-1\">
                          <i class=\"fa fa-star fa-stack-1x\"></i>
                          <i class=\"fa fa-star-o fa-stack-1x\"></i>
                        </label>
                      </div>
                    </div>
      <div id=\"error-rating\" class=\"invalid-feedback\"></div>
    </div>
    ";
            // line 50
            echo ($context["captcha"] ?? null);
            echo "
    <div class=\"d-inline-block pt-2 pd-2 w-100\">
      <div class=\"float-end\">
        <button type=\"submit\" id=\"button-review\" class=\"btn btn-primary\">";
            // line 53
            echo ($context["button_continue"] ?? null);
            echo "</button>
      </div>
    </div>
  ";
        } else {
            // line 57
            echo "    ";
            echo ($context["text_login"] ?? null);
            echo "
  ";
        }
        // line 59
        echo "</form>
<script type=\"text/javascript\"><!--
\$('#review').on('click', '.pagination a', function (e) {
    e.preventDefault();

    \$('#review').load(this.href);
});

// Forms
\$('#form-review').on('submit', function (e) {
    e.preventDefault();

    var element = this;

    \$.ajax({
        url: 'index.php?route=product/review|write&language=";
        // line 74
        echo ($context["language"] ?? null);
        echo "&review_token=";
        echo ($context["review_token"] ?? null);
        echo "&product_id=";
        echo ($context["product_id"] ?? null);
        echo "',
        type: 'post',
        data: \$('#form-review').serialize(),
        dataType: 'json',
        cache: false,
        contentType: 'application/x-www-form-urlencoded',
        processData: false,
        beforeSend: function () {
            \$('#button-review').prop('disabled', true).addClass('loading');
        },
        complete: function () {
            \$('#button-review').prop('disabled', false).removeClass('loading');
        },
        success: function (json) {
            \$('.alert-dismissible').remove();
            \$('#form-review').find('.is-invalid').removeClass('is-invalid');
            \$('#form-review').find('.invalid-feedback').removeClass('d-block');

            if (json['error']) {
              if (json['error']['warning']) {
                  \$('#alert').prepend('<div class=\"a-one\"><div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json['error']['warning'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div></div>');
              }

              for (key in json['error']) {
                  \$('#input-' + key.replaceAll('_', '-')).addClass('is-invalid').find('.form-control, .form-select, .form-check-input, .form-check-label').addClass('is-invalid');
                  \$('#error-' + key.replaceAll('_', '-')).html(json['error'][key]).addClass('d-block');
              }
            }

            if (json['success']) {
                \$('#alert').prepend('<div class=\"a-one\"><div class=\"alert alert-success alert-dismissible\"><svg width=\"20px\" height=\"20px\"> <use xlink:href=\"#successi\"></use> </svg> ' + json['success'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div></div>');

                \$('#input-text').val('');
                \$('#input-rating input[type=\\'radio\\']').prop('checked', false);
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});
//--></script>";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/product/review.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  148 => 74,  131 => 59,  125 => 57,  118 => 53,  112 => 50,  76 => 17,  70 => 14,  64 => 11,  57 => 7,  53 => 6,  50 => 5,  48 => 4,  44 => 3,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/product/review.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/product/review.twig");
    }
}
