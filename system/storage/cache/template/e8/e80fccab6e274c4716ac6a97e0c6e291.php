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

/* catalog/view/template/common/header.twig */
class __TwigTemplate_dd7795fa2a74952f0b80bbd50481ecee extends Template
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
        echo "<!DOCTYPE html>
<html dir=\"";
        // line 2
        echo ($context["direction"] ?? null);
        echo "\" lang=\"";
        echo ($context["lang"] ?? null);
        echo "\">
<head>
  <meta charset=\"UTF-8\"/>
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
  <title>";
        // line 7
        echo ($context["title"] ?? null);
        echo "</title>
  <base href=\"";
        // line 8
        echo ($context["base"] ?? null);
        echo "\"/>
  ";
        // line 9
        if (($context["description"] ?? null)) {
            // line 10
            echo "    <meta name=\"description\" content=\"";
            echo ($context["description"] ?? null);
            echo "\"/>
  ";
        }
        // line 12
        echo "  ";
        if (($context["keywords"] ?? null)) {
            // line 13
            echo "    <meta name=\"keywords\" content=\"";
            echo ($context["keywords"] ?? null);
            echo "\"/>
  ";
        }
        // line 15
        echo "  <link href=\"catalog/view/javascript/jquery/swiper/css/slick.css\" rel=\"stylesheet\">
  <link href=\"catalog/view/javascript/jquery/swiper/css/slick-theme.css\" rel=\"stylesheet\">
  <link href=\"catalog/view/javascript/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\" />
  <script src=\"";
        // line 18
        echo ($context["jquery"] ?? null);
        echo "\" type=\"text/javascript\"></script>
  <link href=\"";
        // line 19
        echo ($context["bootstrap"] ?? null);
        echo "\" type=\"text/css\" rel=\"stylesheet\" media=\"screen\"/>
  <link href=\"";
        // line 20
        echo ($context["icons"] ?? null);
        echo "\" type=\"text/css\" rel=\"stylesheet\"/>
  <link href=\"";
        // line 21
        echo ($context["stylesheet"] ?? null);
        echo "\" type=\"text/css\" rel=\"stylesheet\"/>
  <script type=\"text/javascript\" src=\"catalog/view/javascript/jquery/datetimepicker/moment.min.js\"></script>
  <script type=\"text/javascript\" src=\"catalog/view/javascript/jquery/datetimepicker/moment-with-locales.min.js\"></script>
  <script type=\"text/javascript\" src=\"catalog/view/javascript/jquery/datetimepicker/daterangepicker.js\"></script>
  <link href=\"catalog/view/javascript/jquery/datetimepicker/daterangepicker.css\" rel=\"stylesheet\" type=\"text/css\"/>
  <link href=\"https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&display=swap\" rel=\"stylesheet\">
  <script src=\"catalog/view/javascript/workdo/custom.js\" type=\"text/javascript\"></script>
  <script src=\"catalog/view/javascript/workdo/option.js\" type=\"text/javascript\"></script>
  <script src=\"catalog/view/javascript/common.js\" type=\"text/javascript\"></script>
  <script src=\"catalog/view/javascript/jquery/swiper/js/slick.js\" type=\"text/javascript\"></script>
  ";
        // line 31
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["links"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
            // line 32
            echo "    <link href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["link"], "href", [], "any", false, false, false, 32);
            echo "\" rel=\"";
            echo twig_get_attribute($this->env, $this->source, $context["link"], "rel", [], "any", false, false, false, 32);
            echo "\"/>
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['link'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 34
        echo "  ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["analytics"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["analytic"]) {
            // line 35
            echo "    ";
            echo $context["analytic"];
            echo "
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['analytic'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 37
        echo "</head>
<svg style=\"display: none;\">
  <symbol viewBox=\"0 0 8 7\" id=\"youtube\">
    <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.50015 1.20163C1.99665 1.11474 2.76171 1.03447 3.89246 1.03447C5.02321 1.03447 5.78827 1.11474 6.28476 1.20163C6.62039 1.26037 6.85877 1.59168 6.85877 2.06569V5.0089C6.85877 5.48291 6.62039 5.81422 6.28476 5.87296C5.78827 5.95985 5.02321 6.04012 3.89246 6.04012C2.76171 6.04012 1.99665 5.95985 1.50015 5.87296C1.16453 5.81422 0.926148 5.48291 0.926148 5.0089V2.06569C0.926148 1.59168 1.16453 1.26037 1.50015 1.20163ZM3.89246 0.200195C2.73147 0.200195 1.92747 0.282534 1.38616 0.377273C0.61158 0.512839 0.18457 1.2757 0.18457 2.06569V5.0089C0.18457 5.79889 0.611581 6.56175 1.38616 6.69732C1.92747 6.79206 2.73147 6.87439 3.89246 6.87439C5.05345 6.87439 5.85745 6.79206 6.39876 6.69732C7.17334 6.56175 7.60035 5.79889 7.60035 5.0089V2.06569C7.60035 1.2757 7.17334 0.512839 6.39876 0.377273C5.85745 0.282534 5.05345 0.200195 3.89246 0.200195ZM3.34671 2.33524C3.46727 2.26265 3.61357 2.27061 3.72735 2.35594L4.83971 3.19022C4.94287 3.26758 5.00482 3.39782 5.00482 3.5373C5.00482 3.67677 4.94287 3.80701 4.83971 3.88437L3.72735 4.71865C3.61357 4.80398 3.46727 4.81194 3.34671 4.73935C3.22615 4.66676 3.15088 4.52541 3.15088 4.37157V2.70302C3.15088 2.54918 3.22615 2.40783 3.34671 2.33524Z\"/>
  </symbol>
  <symbol viewBox=\"0 0 8 8\" id=\"massage\">
    <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M3.59564 0.985352C2.89847 0.985352 2.03687 1.19755 1.34001 1.68137C0.628737 2.1752 0.09375 2.95132 0.09375 4.03641C0.09375 4.69785 0.333058 5.19927 0.574931 5.53513C0.679323 5.68009 0.784268 5.79444 0.871055 5.8785L0.518039 7.18567C0.479016 7.33016 0.53443 7.48246 0.659933 7.57566C0.785437 7.66886 0.958064 7.68589 1.10197 7.61928L2.58869 6.93115C3.43084 7.19234 4.58464 7.10329 5.54435 6.6951C6.5965 6.24759 7.50953 5.372 7.50953 4.03641C7.50953 2.8556 6.94689 2.06818 6.14832 1.59396C5.37505 1.13476 4.41156 0.985352 3.59564 0.985352ZM1.7294 5.84513C1.76936 5.69716 1.71023 5.54147 1.57928 5.44919L1.57783 5.44812C1.57527 5.44623 1.57001 5.44227 1.56243 5.43625C1.54722 5.42419 1.52285 5.40398 1.49229 5.37569C1.43096 5.31892 1.34611 5.23087 1.26052 5.11203C1.09041 4.87581 0.917725 4.51913 0.917725 4.03641C0.917725 3.21459 1.30971 2.65587 1.8344 2.29159C2.3735 1.9173 3.05686 1.74812 3.59564 1.74812C4.32448 1.74812 5.11194 1.88474 5.70343 2.23598C6.26962 2.57221 6.68555 3.11962 6.68555 4.03641C6.68555 4.98912 6.05362 5.63906 5.20034 6.00199C4.3271 6.3734 3.3179 6.3989 2.72797 6.16485C2.61658 6.12066 2.48982 6.12411 2.38143 6.17428L1.53466 6.56621L1.7294 5.84513ZM3.64702 3.35722C3.48309 3.23582 3.24677 3.24794 3.09833 3.38535L2.27436 4.14812C2.11347 4.29706 2.11347 4.53854 2.27436 4.68748C2.43525 4.83642 2.6961 4.83642 2.85699 4.68748L3.42023 4.16608L4.16225 4.71561C4.32618 4.83701 4.5625 4.82489 4.71094 4.68748L5.53491 3.92471C5.69581 3.77577 5.69581 3.53429 5.53491 3.38535C5.37402 3.23642 5.11317 3.23642 4.95228 3.38535L4.38904 3.90675L3.64702 3.35722Z\"/>
  </symbol>
  <symbol viewBox=\"0 0 9 9\" id=\"instagram\">
  <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M0.746094 3.26117C0.746094 1.90962 1.74214 0.813965 2.97083 0.813965H5.93714C7.16582 0.813965 8.16187 1.90962 8.16187 3.26117V6.52411C8.16187 7.87567 7.16582 8.97132 5.93714 8.97132H2.97083C1.74214 8.97132 0.746094 7.87567 0.746094 6.52411V3.26117ZM2.97083 1.6297C2.1517 1.6297 1.48767 2.36013 1.48767 3.26117V6.52411C1.48767 7.42515 2.1517 8.15558 2.97083 8.15558H5.93714C6.75626 8.15558 7.42029 7.42515 7.42029 6.52411V3.26117C7.42029 2.36013 6.75626 1.6297 5.93714 1.6297H2.97083ZM3.7124 4.89264C3.7124 5.34316 4.04442 5.70838 4.45398 5.70838C4.86354 5.70838 5.19556 5.34316 5.19556 4.89264C5.19556 4.44212 4.86354 4.07691 4.45398 4.07691C4.04442 4.07691 3.7124 4.44212 3.7124 4.89264ZM4.45398 3.26117C3.63486 3.26117 2.97083 3.99161 2.97083 4.89264C2.97083 5.79368 3.63486 6.52411 4.45398 6.52411C5.27311 6.52411 5.93714 5.79368 5.93714 4.89264C5.93714 3.99161 5.27311 3.26117 4.45398 3.26117ZM6.12253 2.44544C5.81536 2.44544 5.56635 2.71935 5.56635 3.05724C5.56635 3.39513 5.81536 3.66904 6.12253 3.66904C6.4297 3.66904 6.67871 3.39513 6.67871 3.05724C6.67871 2.71935 6.4297 2.44544 6.12253 2.44544Z\"/>
  </symbol>
  <symbol viewBox=\"0 0 9 8\" id=\"twitter\">
  <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M4.43044 2.01665C4.20198 2.37906 4.12486 2.8042 4.12486 3.00598C4.12486 3.13893 4.05847 3.26322 3.94764 3.33775C3.83681 3.41229 3.69598 3.42736 3.57171 3.37798C3.49044 3.34569 3.39989 3.31286 3.30198 3.27736C3.04833 3.1854 2.74529 3.07553 2.42621 2.91071C2.10216 2.74333 1.74904 2.51601 1.34908 2.17847C1.35404 2.32915 1.38755 2.46715 1.44386 2.59504C1.5753 2.8936 1.85401 3.18878 2.31554 3.46368C2.44181 3.5389 2.51679 3.67648 2.51116 3.82262C2.50553 3.96876 2.42018 4.10025 2.28849 4.16565L2.28805 4.16587L2.28757 4.16611L2.28649 4.16664L2.28388 4.16791L2.27684 4.17128C2.27135 4.17388 2.26425 4.17717 2.25561 4.18105C2.23832 4.1888 2.21479 4.19893 2.18543 4.2106C2.12676 4.23391 2.0444 4.26353 1.94161 4.2927C1.83351 4.32338 1.70189 4.35382 1.55078 4.37576C1.63701 4.6799 1.82918 4.86974 2.03627 5.01314C2.15804 5.09747 2.27585 5.15954 2.39425 5.22192C2.4237 5.23743 2.45319 5.25297 2.48279 5.26887C2.54745 5.30362 2.63246 5.35057 2.70276 5.40644C2.75702 5.44955 2.91481 5.5834 2.91481 5.81057C2.91481 5.95582 2.84849 6.06901 2.80651 6.12951C2.7574 6.20029 2.69541 6.26416 2.63051 6.32C2.49957 6.43266 2.32381 6.54091 2.11542 6.62959C1.87548 6.7317 1.58255 6.812 1.2477 6.84092C1.27513 6.85553 1.30429 6.86949 1.33522 6.8828C1.6288 7.00917 2.05815 7.06088 2.57539 7.01418C3.60087 6.92159 4.81744 6.45675 5.65361 5.72801C6.29461 4.9926 6.56609 4.26495 6.67908 3.72566C6.73623 3.45287 6.7529 3.22769 6.75565 3.07399C6.75702 2.99721 6.75491 2.93854 6.75271 2.901C6.75161 2.88224 6.75048 2.8688 6.74976 2.86105L6.74903 2.85377C6.73716 2.75588 6.76202 2.65684 6.81894 2.57602L6.74914 2.85466L6.74923 2.85535L6.81894 2.57602L7.5609 2.91575C7.55476 2.92507 7.56646 2.90741 7.5609 2.91575C7.5609 2.91575 7.56341 3.02146 7.56222 3.08822C7.5587 3.28509 7.53762 3.56074 7.46886 3.88893C7.331 4.54692 7.00173 5.41392 6.24413 6.27462C6.23297 6.28729 6.22103 6.29925 6.20836 6.31043C5.22888 7.17475 3.83384 7.70517 2.64841 7.8122C2.0563 7.86567 1.47721 7.81722 1.01448 7.61805C0.535329 7.41182 0.165766 7.03203 0.0939387 6.46125C0.0781412 6.33572 0.122962 6.21014 0.214839 6.12253C0.306716 6.03492 0.434855 5.99555 0.560485 6.01635C1.08522 6.10322 1.51159 6.0148 1.79775 5.89303C1.82628 5.88089 1.87832 5.85614 1.87832 5.85614C1.87832 5.85614 1.67888 5.74248 1.57492 5.67048C1.1493 5.37574 0.696379 4.87758 0.696379 4.00762C0.696379 3.78635 0.876965 3.60697 1.09973 3.60697C1.12906 3.60697 1.15782 3.60641 1.18599 3.60537C0.980502 3.39881 0.816425 3.16978 0.704743 2.91611C0.478326 2.40183 0.49016 1.8383 0.725227 1.25456C0.775582 1.12951 0.885814 1.03797 1.01863 1.01089C1.15144 0.983807 1.28907 1.02482 1.38494 1.12005C1.96468 1.69592 2.41932 2.00398 2.79838 2.19978C3.01615 2.31226 3.20289 2.38638 3.38967 2.4552C3.45442 2.18216 3.56756 1.87559 3.74671 1.59139C4.07763 1.06644 4.64862 0.602051 5.53659 0.602051C6.08741 0.602051 6.44184 0.871683 6.66502 1.05648C6.69191 1.07875 6.71524 1.09823 6.73573 1.11534C6.78733 1.15843 6.82097 1.18652 6.84839 1.20638C7.03175 1.12005 7.19731 1.05957 7.34453 1.0317C7.50103 1.00208 7.72657 0.992993 7.91227 1.14068C8.10767 1.29608 8.13029 1.51961 8.12359 1.652C8.11656 1.79055 8.07503 1.9293 8.03137 2.04491C7.94217 2.28107 7.80026 2.5321 7.68962 2.71311C7.64115 2.79239 7.59639 2.86193 7.5609 2.91575C7.56797 3.00322 7.56013 2.90749 7.5609 2.91575L6.81894 2.57602L6.8194 2.57536L6.82172 2.57204L6.83176 2.55751C6.84073 2.54445 6.85404 2.52491 6.87061 2.50003C6.90384 2.45016 6.94977 2.3795 7.00007 2.29722C7.07155 2.18029 7.14615 2.04902 7.20595 1.92485C7.18168 1.93614 7.15597 1.9485 7.12875 1.96202C7.12329 1.96474 7.11776 1.96733 7.11218 1.9698C6.86539 2.07878 6.64304 2.0149 6.48694 1.92709C6.37916 1.86647 6.26913 1.77361 6.1897 1.70657C6.17482 1.69401 6.16101 1.68235 6.14849 1.67199C5.95962 1.5156 5.79247 1.40336 5.53659 1.40336C4.98329 1.40336 4.64674 1.67351 4.43044 2.01665Z\"/>
  </symbol>
  <symbol viewBox=\"0 0 24 24\" id=\"arleft\">
    <g clip-path=\"url(#clip0_16_1732)\">
              <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.29289 12.7071C1.10536 12.5196 0.999999 12.2652 0.999999 12C0.999999 11.7348 1.10536 11.4804 1.29289 11.2929L12.2929 0.292894C12.6834 -0.0976306 13.3166 -0.0976306 13.7071 0.292894C14.0976 0.683418 14.0976 1.31658 13.7071 1.70711L3.41421 12L13.7071 22.2929C14.0976 22.6834 14.0976 23.3166 13.7071 23.7071C13.3166 24.0976 12.6834 24.0976 12.2929 23.7071L1.29289 12.7071ZM10.2929 12.7071C10.1054 12.5196 10 12.2652 10 12C10 11.7348 10.1054 11.4804 10.2929 11.2929L21.2929 0.292894C21.6834 -0.0976302 22.3166 -0.0976302 22.7071 0.292894C23.0976 0.683419 23.0976 1.31658 22.7071 1.70711L12.4142 12L22.7071 22.2929C23.0976 22.6834 23.0976 23.3166 22.7071 23.7071C22.3166 24.0976 21.6834 24.0976 21.2929 23.7071L10.2929 12.7071Z\"></path>
              </g>
    <defs>
              <clipPath id=\"clip0_16_1732\">
              <rect width=\"24\" height=\"24\" transform=\"translate(24) rotate(90)\"></rect>
              </clipPath>
     </defs>
    </symbol> 
  <symbol viewBox=\"0 0 24 24\" id=\"arright\">
    <g clip-path=\"url(#clip0_16_1732)\">
              <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M1.29289 12.7071C1.10536 12.5196 0.999999 12.2652 0.999999 12C0.999999 11.7348 1.10536 11.4804 1.29289 11.2929L12.2929 0.292894C12.6834 -0.0976306 13.3166 -0.0976306 13.7071 0.292894C14.0976 0.683418 14.0976 1.31658 13.7071 1.70711L3.41421 12L13.7071 22.2929C14.0976 22.6834 14.0976 23.3166 13.7071 23.7071C13.3166 24.0976 12.6834 24.0976 12.2929 23.7071L1.29289 12.7071ZM10.2929 12.7071C10.1054 12.5196 10 12.2652 10 12C10 11.7348 10.1054 11.4804 10.2929 11.2929L21.2929 0.292894C21.6834 -0.0976302 22.3166 -0.0976302 22.7071 0.292894C23.0976 0.683419 23.0976 1.31658 22.7071 1.70711L12.4142 12L22.7071 22.2929C23.0976 22.6834 23.0976 23.3166 22.7071 23.7071C22.3166 24.0976 21.6834 24.0976 21.2929 23.7071L10.2929 12.7071Z\"></path>
              </g>
    <defs>
              <clipPath id=\"clip0_16_1732\">
              <rect width=\"24\" height=\"24\" transform=\"translate(24) rotate(90)\"></rect>
              </clipPath>
     </defs>
    </symbol> 
  <symbol id=\"heart\" viewBox=\"0 0 17 14\">
      <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M9.02585 3.26961C8.73272 3.54789 8.26988 3.54789 7.97676 3.26961L7.45221 2.77163C6.83825 2.18877 6.00883 1.83287 5.09221 1.83287C3.20942 1.83287 1.68312 3.3428 1.68312 5.20538C1.68312 6.99103 2.66023 8.4655 4.07082 9.67699C5.4826 10.8895 7.17055 11.6937 8.17906 12.1041C8.38994 12.1899 8.61267 12.1899 8.82354 12.1041C9.83206 11.6937 11.52 10.8895 12.9318 9.67698C14.3424 8.4655 15.3195 6.99102 15.3195 5.20538C15.3195 3.3428 13.7932 1.83287 11.9104 1.83287C10.9938 1.83287 10.1644 2.18877 9.55039 2.77163L9.02585 3.26961ZM8.5013 1.69016C7.61653 0.850205 6.41531 0.333984 5.09221 0.333984C2.37263 0.333984 0.167969 2.51498 0.167969 5.20538C0.167969 9.97804 5.44853 12.6137 7.60266 13.4903C8.18279 13.7263 8.81981 13.7263 9.39995 13.4903C11.5541 12.6137 16.8346 9.97803 16.8346 5.20538C16.8346 2.51498 14.63 0.333984 11.9104 0.333984C10.5873 0.333984 9.38607 0.850205 8.5013 1.69016Z\" fill=\"white\"/>
  </symbol>
  <symbol id=\"compare\" viewBox=\"0 0 490 490\">
  <path d=\"M215.746,324.797L109.763,98.724l127.557-23.822v288.682c-137.303,6.625-190.134,99.45-192.383,103.566l-12.408,22.659 h444.023l-17.213-24.174c-2.876-4.024-69.217-94.753-191.419-101.975V69.195l113.894-21.267l-107.56,229.424H490L382.395,47.82 l93.958-17.534l-5.615-30.095L28.886,82.689l5.615,30.095l71.115-13.281L0,324.797H215.746z M88.939,459.209 c24.021-26.209,74.909-65.653,163.68-65.653c76.791,0,131.336,39.046,159.61,65.653H88.939z M322.403,246.752l59.731-127.419 l59.716,127.419H322.403z M48.149,294.197l59.716-127.419l59.731,127.419H48.149z\"></path>
  </symbol>
  <symbol id=\"hcart\" viewBox=\"0 0 28 30\">
  <path d=\"M7.02246 8.45572H21.1605C22.9277 8.45572 24.4004 10.3442 24.695 12.2328L26.4622 23.5639C26.7569 25.4534 24.695 27.341 22.9277 27.341H5.25521C3.48796 27.341 1.42601 25.4534 1.72071 23.5639L3.48796 12.2328C3.7825 10.3442 5.25521 8.45572 7.02246 8.45572Z\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>
  <path d=\"M8.78955 12.2329V6.54535\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>
  <path d=\"M19.3933 6.56717V12.2327\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>
  <path d=\"M2.06201 21.595H26.1209\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>
  <path d=\"M19.3932 6.56722C19.3932 4.67869 18.3661 2.66588 16.732 1.65774C15.098 0.649608 13.0848 0.649608 11.4508 1.65774C9.8168 2.66588 8.78967 4.67869 8.78967 6.56722\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>
  </symbol>
  <symbol viewBox=\"0 0 52 52\" id=\"successi\">
  <path d=\"M26,0C11.664,0,0,11.663,0,26s11.664,26,26,26s26-11.663,26-26S40.336,0,26,0z M26,50C12.767,50,2,39.233,2,26
  S12.767,2,26,2s24,10.767,24,24S39.233,50,26,50z\"></path>
  <path d=\"M38.252,15.336l-15.369,17.29l-9.259-7.407c-0.43-0.345-1.061-0.274-1.405,0.156c-0.345,0.432-0.275,1.061,0.156,1.406
  l10,8C22.559,34.928,22.78,35,23,35c0.276,0,0.551-0.114,0.748-0.336l16-18c0.367-0.412,0.33-1.045-0.083-1.411
  C39.251,14.885,38.62,14.922,38.252,15.336z\"></path>
  </symbol>
  <symbol viewBox=\"0 0 95.494 95.494\" id=\"clist\">
  <circle cx=\"10.906\" cy=\"17.294\" r=\"10.906\"></circle>
  <circle cx=\"10.906\" cy=\"47.294\" r=\"10.906\"></circle>
  <circle cx=\"10.906\" cy=\"78.2\" r=\"10.906\"></circle>
  <path d=\"M34.258,24.43h59.236c0.529,0,1.039-0.211,1.414-0.586s0.586-0.884,0.586-1.414l-0.002-10.271c0-1.104-0.896-2-2-2
  H34.258c-1.104,0-2,0.896-2,2V22.43C32.258,23.534,33.153,24.43,34.258,24.43z\"></path>
  <path d=\"M93.492,40.158H34.258c-1.104,0-2,0.896-2,2v10.271c0,1.104,0.896,2,2,2h59.236c0.529,0,1.039-0.211,1.414-0.586
  s0.586-0.885,0.586-1.414l-0.002-10.271C95.492,41.054,94.598,40.158,93.492,40.158z\"></path>
  <path d=\"M93.492,71.064H34.258c-1.104,0-2,0.896-2,2v10.271c0,1.104,0.896,2,2,2h59.236c0.529,0,1.039-0.211,1.414-0.586
  s0.586-0.885,0.586-1.414l-0.002-10.271C95.492,71.96,94.598,71.064,93.492,71.064z\"></path>
  </symbol>
  <symbol viewBox=\"0 0 341.333 341.333\" id=\"cgrid\">
  <rect x=\"128\" y=\"128\" width=\"85.333\" height=\"85.333\"></rect>
  <rect x=\"0\" y=\"0\" width=\"85.333\" height=\"85.333\"></rect>
  <rect x=\"128\" y=\"256\" width=\"85.333\" height=\"85.333\"></rect>
  <rect x=\"0\" y=\"128\" width=\"85.333\" height=\"85.333\"></rect>
  <rect x=\"0\" y=\"256\" width=\"85.333\" height=\"85.333\"></rect>
  <rect x=\"256\" y=\"0\" width=\"85.333\" height=\"85.333\"></rect>
  <rect x=\"128\" y=\"0\" width=\"85.333\" height=\"85.333\"></rect>
  <rect x=\"256\" y=\"128\" width=\"85.333\" height=\"85.333\"></rect>
  <rect x=\"256\" y=\"256\" width=\"85.333\" height=\"85.333\"></rect>
  </symbol>
  <symbol viewBox=\"0 0 512 512\" id=\"aclorder\">
  <path d=\"M448,177.14V448c0,35.344-28.656,64-64,64H64c-35.344,0-64-28.656-64-64V128c0-35.344,28.656-64,64-64h270.844l-63.969,64
  H64v320h320V241.156L448,177.14z M398.875,45.25L376.25,67.875l67.875,67.891l22.625-22.625L398.875,45.25z M444.125,0
  L421.5,22.625l67.875,67.891L512,67.875L444.125,0z M150,294.188l67.875,67.875L421.5,158.406l-67.875-67.891L150,294.188z
  M128,384h64l-64-64V384z\"/>
  </symbol>
  <symbol viewBox=\"0 0 510 510\" id=\"aclufolder\">
  <path d=\"M459,102H255l-51-51H51C22.95,51,0,73.95,0,102v306c0,28.05,22.95,51,51,51h408c28.05,0,51-22.95,51-51V153
  C510,124.95,487.05,102,459,102z M331.5,178.5c28.05,0,51,22.95,51,51s-22.95,51-51,51s-51-22.95-51-51S303.45,178.5,331.5,178.5z
  M433.5,382.5h-204V357c0-33.15,68.85-51,102-51s102,17.85,102,51V382.5z\"/>
  </symbol>
  <symbol viewBox=\"0 0 348.458 348.458\" id=\"aclogout\">
  <path d=\"M204.661,55.646V79.08c55.185,13.862,94.864,64.183,94.864,121.343c0,69.084-56.218,125.289-125.297,125.289
  c-69.082,0-125.29-56.205-125.29-125.289c0-56.974,39.469-107.108,94.857-121.201V55.704
  c-68.19,14.319-117.61,75.054-117.61,144.725c0,81.629,66.416,148.029,148.042,148.029c81.63,0,148.043-66.4,148.043-148.029
  C322.271,130.658,272.863,69.968,204.661,55.646z\"/>
  <rect x=\"162.859\" width=\"22.731\" height=\"123.12\"/>
  </symbol>
  <symbol viewBox=\"0 0 409.165 409.164\" id=\"acluser\">
  <path d=\"M204.583,216.671c50.664,0,91.74-48.075,91.74-107.378c0-82.237-41.074-107.377-91.74-107.377
  c-50.668,0-91.74,25.14-91.74,107.377C112.844,168.596,153.916,216.671,204.583,216.671z\"/>
  <path d=\"M407.164,374.717L360.88,270.454c-2.117-4.771-5.836-8.728-10.465-11.138l-71.83-37.392
  c-1.584-0.823-3.502-0.663-4.926,0.415c-20.316,15.366-44.203,23.488-69.076,23.488c-24.877,0-48.762-8.122-69.078-23.488
  c-1.428-1.078-3.346-1.238-4.93-0.415L58.75,259.316c-4.631,2.41-8.346,6.365-10.465,11.138L2.001,374.717
  c-3.191,7.188-2.537,15.412,1.75,22.005c4.285,6.592,11.537,10.526,19.4,10.526h362.861c7.863,0,15.117-3.936,19.402-10.527
  C409.699,390.129,410.355,381.902,407.164,374.717z\"/>
  </symbol>
</svg>
<body>
<div id=\"alert\"></div>
<header>
  <div class=\"top-header hidden-xs\">
    <div class=\"container\">
      <div class=\"row\">
        <div class=\"topbspinner\">
          <div class=\"col-md-2\"></div>
          <div class=\"col-md-3 col-xs-12\">
            <div class=\"custom-link\">
            <a href=\"index.php?route=information/information&language=en-gb&information_id=1\">About</a>
            <a href=\"index.php?route=information/sitemap&language=en-gb\">Site Map</a>
            <a href=\"index.php?route=product/manufacturer&language=en-gb\">Brand</a>
            <a href=\"index.php?route=information/contact&language=en-gb\">Contact</a>
          </div>
          </div>
        <div class=\"col-md-4 col-xs-12\">
            <div class=\"ebook\">
              <div class=\"ebook-ctn\">
                <h4>
                  Monday - Friday:  8:00 AM - 9:00 PM
                </h4>
              </div>
          </div>
        </div>
      <div class=\"col-md-3 col-xs-12 htop-user\">
        <div class=\"head-call\">
          <h2>Call and take more info:</h2>
          <a href=\"tel:+00 544-213-615\">+00 544-213-615</a>
        </div>
      </div>
      </div>
    </div>
  </div>
  </div>

  <div class=\"homemenu\">
  <div class=\"container\">
    <div class=\"row header-bg\">
      <div class=\"sub_megamenu\">
        ";
        // line 181
        echo ($context["menu"] ?? null);
        echo "
      </div>
      <div class=\"col-md-2 col-sm-2 text-left header-logo\">
        <div id=\"logo\">
          ";
        // line 185
        if (($context["logo"] ?? null)) {
            // line 186
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
            // line 188
            echo "            <h1><a href=\"";
            echo ($context["home"] ?? null);
            echo "\">";
            echo ($context["name"] ?? null);
            echo "</a></h1>
          ";
        }
        // line 190
        echo "        </div>
      </div>
      <div class=\"manu_bg col-md-10 col-sm-10\">
        <div class=\"row\">
      <div class=\"col-md-6 head-manu\">
        <div class=\"top-manu\">
          <div class=\"megamenu\">
            ";
        // line 197
        echo ($context["menu"] ?? null);
        echo "
          </div>
        </div>
      </div>
      <div class=\"col-md-6 col-sm-5 megamenu_border\">
      <div class=\"main-header\">
        <div class=\"h-icon\">
        <div id=\"top-links\">
          <div class=\"h-search\">
            <div class=\"top-search\">
              ";
        // line 207
        echo ($context["search"] ?? null);
        echo "
            </div>
          </div>
          <ul class=\"list-inline d-flex user-bg\">
           <li class=\"userapp\"></li>
           <li class=\"huser\">
              <div class=\"dropdown\">
                <a href=\"";
        // line 214
        echo ($context["account"] ?? null);
        echo "\" class=\"dropdown-toggle huser-drop\" data-bs-toggle=\"dropdown\">
                <div class=\"xuser\">                
                  <img src=\"image/catalog/huser.svg\" alt=\"user\"/>
                  <span>log in</span>
                </div>
                <div class=\"xuser-desc d-none\">
                  <span>";
        // line 220
        if (($context["logged"] ?? null)) {
            echo "<span class=\"d-none d-lg-inline\">";
            echo ($context["text_logout"] ?? null);
            echo "</span>";
        } else {
            echo "<span class=\"d-none d-lg-inline\">";
            echo ($context["text_account"] ?? null);
            echo "</span>";
        }
        echo "</span>
                </div>                
                </a>
                <ul class=\"dropdown-menu dropdown-menu-right haccount  hlogout\">
                <h5 class=\"text-left\">Your Account</h5>
                <h6 class=\"text-left\">Access account and manage orders</h6>
                ";
        // line 226
        if ( !($context["logged"] ?? null)) {
            // line 227
            echo "                  <li class=\"acd\"><a href=\"";
            echo ($context["register"] ?? null);
            echo "\" class=\"dropdown-item\"><i class=\"fa fa-user-plus\"></i>";
            echo ($context["text_register"] ?? null);
            echo "</a></li>
                  <li class=\"acd\"><a href=\"";
            // line 228
            echo ($context["login"] ?? null);
            echo "\" class=\"dropdown-item\"><i class=\"fa fa-lock\"></i>";
            echo ($context["text_login"] ?? null);
            echo "</a></li>
                  <li class=\"wishcom\"><a href=\"";
            // line 229
            echo ($context["compare"] ?? null);
            echo "\"><i class=\"fa fa-compress\"></i>compare</a></li>
                  <li class=\"wishcom\"><a href=\"";
            // line 230
            echo ($context["wishlist"] ?? null);
            echo "\"><i class=\"fa fa-heart\"></i>wishlist</a></li>
                ";
        } else {
            // line 232
            echo "                  <li class=\"acd\"><a href=\"";
            echo ($context["account"] ?? null);
            echo "\" class=\"dropdown-item\">";
            echo ($context["text_account"] ?? null);
            echo "</a></li>
                  <li class=\"acd\"><a href=\"";
            // line 233
            echo ($context["order"] ?? null);
            echo "\" class=\"dropdown-item\">";
            echo ($context["text_order"] ?? null);
            echo "</a></li>
                  <li class=\"acd\"><a href=\"";
            // line 234
            echo ($context["transaction"] ?? null);
            echo "\" class=\"dropdown-item\">";
            echo ($context["text_transaction"] ?? null);
            echo "</a></li>
                  <li class=\"acd\"><a href=\"";
            // line 235
            echo ($context["download"] ?? null);
            echo "\" class=\"dropdown-item\">";
            echo ($context["text_download"] ?? null);
            echo "</a></li>
                  <li class=\"acd\"><a href=\"";
            // line 236
            echo ($context["logout"] ?? null);
            echo "\" class=\"dropdown-item\">";
            echo ($context["text_logout"] ?? null);
            echo "</a></li>
                  <li class=\"wishcom\"><a href=\"";
            // line 237
            echo ($context["compare"] ?? null);
            echo "\"><i class=\"fa fa-compress\"></i>compare</a></li>
                  <li class=\"wishcom\"><a href=\"";
            // line 238
            echo ($context["wishlist"] ?? null);
            echo "\"><i class=\"fa fa-heart\"></i>wishlist</a></li>
                ";
        }
        // line 240
        echo "                <li class=\"xsla d-inline-block\">";
        echo ($context["currency"] ?? null);
        echo "</li>
              </ul>
                <ul>
                   
                </ul>
              </div>
          </li>              
          </ul>
        <div class=\"d-inline-block\"><span id=\"header-cart\">";
        // line 248
        echo ($context["cart"] ?? null);
        echo "</span></div>
        </div>
        </div>
      </div>
    </div>
    </div>
  </div>
    </div>
  </div>
  </div>
</header>
<main>
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/common/header.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  443 => 248,  431 => 240,  426 => 238,  422 => 237,  416 => 236,  410 => 235,  404 => 234,  398 => 233,  391 => 232,  386 => 230,  382 => 229,  376 => 228,  369 => 227,  367 => 226,  350 => 220,  341 => 214,  331 => 207,  318 => 197,  309 => 190,  301 => 188,  289 => 186,  287 => 185,  280 => 181,  134 => 37,  125 => 35,  120 => 34,  109 => 32,  105 => 31,  92 => 21,  88 => 20,  84 => 19,  80 => 18,  75 => 15,  69 => 13,  66 => 12,  60 => 10,  58 => 9,  54 => 8,  50 => 7,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/common/header.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\common\\header.twig");
    }
}