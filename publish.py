#------------------------------------------------------------------------------#

from pathlib  import Path
from datetime import datetime
import shutil as sh

#------------------------------------------------------------------------------#

title      = 'Materiais Didáticos para CFVVI'
discipline = 'Cálculo de Funções de Várias Variáveis I'
book_name  = 'Calculo_Varias_Variaveis-1.pdf'
add_book   = False

#------------------------------------------------------------------------------#

# Sources
root = Path(__file__).parent
book    = root / '1-book' / book_name
classes = root / '2-classes' / 'pdf' / '2-hand'
exams   = root / '3-exams'

# Destiny
page         = root / '_docs_md'
page_classes = page / 'classes'
page_exams   = page / 'exams'
index        = page / 'index.md'

tab = 4*' '

#------------------------------------------------------------------------------#
def folder_name(src: str) -> str:

    names = {
            'A Introducao'           : 'A - Introdução',
            'B Curvas parametricas'  : 'B - Curvas paramétricas',
            'C Quadricas'            : 'C - Quádricas',
            'D Funcoes'              : 'D - Funções',
            'E Limites continuidade' : 'E - Limites continuidade',
            'F Derivadas'            : 'F - Derivadas',
            'G Regra da cadeia'      : 'G - Regra da cadeia',
            'H Derivada direcional'  : 'H - Derivada direcional',
            'I Plano tangente'       : 'I - Plano tangente',
            'J Extremos'             : 'J - Extremos',
            'K Coordenadas polares'  : 'K - Coordenadas polares',
            }
    try:
        return names[src]

    except KeyError:
        return src


#------------------------------------------------------------------------------#
def pdf_name(src: str) -> str:

    names = {
        'A 01 Apresentacao'                      : 'A - 01 - Apresentação',
        'A 02 Metodo Matematico'                 : 'A - 02 - Método Matemático',
        'A 03 Funcoes'                           : 'A - 03 - Funções',
        'A 04 Limites'                           : 'A - 04 - Limites',
        'A 05 Derivadas'                         : 'A - 05 - Derivadas',
        'B 01 Plano cartesiano'                  : 'B - 01 - Plano cartesiano',
        'B 02 Curvas parametricas'               : 'B - 02 - Curvas paramétricas',
        'B 03 Vetores'                           : 'B - 03 - Vetores',
        'B 04 Vetor tangente'                    : 'B - 04 - Vetor tangente',
        'C 01 Coordenadas e esferas'             : 'C - 01 - Coordenadas e esferas',
        'C 02 Vetores e planos'                  : 'C - 02 - Vetores e planos',
        'C 03 Conicas'                           : 'C - 03 - Cônicas',
        'C 04 Quadricas'                         : 'C - 04 - Quádricas',
        'D 01 Funcoes varias variaveis'          : 'D - 01 - Funções de varias variáveis',
        'D 02 Graficos'                          : 'D - 02 - Gráficos',
        'D 03 Curvas nivel'                      : 'D - 03 - Curvas de nível',
        'E 01 Limites'                           : 'E - 01 - Limites',
        'E 02 Inexistencia'                      : 'E - 02 - Inexistência',
        'E 03 Continuidade'                      : 'E - 03 - Continuidade',
        'F 01 Derivadas parciais'                : 'F - 01 - Derivadas parciais',
        'F 02 Derivadas parciais e continuidade' : 'F - 02 - Derivadas parciais e continuidade',
        'F 03 Derivadas parciais ordem superior' : 'F - 03 - Derivadas parciais de ordem superior',
        'G 01 Regra da cadeia'                   : 'G - 01 - Regra da cadeia',
        'G 02 Derivacao implicita'               : 'G - 02 - Derivação implícita',
        'H 01 Derivada direcional gradientes'    : 'H - 01 - Derivada direcional e gradientes',
        'H 02 Propriedades gradientes'           : 'H - 02 - Propriedades dos gradientes',
        'I 01 Diferenciabilidade'                : 'I - 01 - Diferenciabilidade',
        'I 02 Plano tangente'                    : 'I - 02 - Plano tangente',
        'I 03 Linearizacao'                      : 'I - 03 - Linearização',
        'I 04 Linearizacao erro'                 : 'I - 04 - Linearização - erro',
        'I 05 Diferenciais'                      : 'I - 05 - Diferenciais',
        'J 01 Maximos minimos'                   : 'J - 01 - Máximos e mínimos',
        'J 02 Extremos regioes fechadas'         : 'J - 02 - Extremos em regiões fechadas',
        'J 03 Multiplicadores Lagrange'          : 'J - 03 - Multiplicadores de Lagrange',
        'K 01 Coordenadas polares'               : 'K - 01 - Coordenadas polares',
        'L 01 Numeros Complexos'                 : 'L - 01 - Números Complexos',
        'L 02 Plano Complexo'                    : 'L - 02 - Plano Complexo',
        'L 03 Polinomios'                        : 'L - 03 - Polinômios',
        'L 04 Forma Polar Numeros Complexos'     : 'L - 04 - Forma Polar dos Números Complexos',
        'L 05 Formulas Moivre'                   : 'L - 05 - Fórmulas de De Moivre',
        'L 06 Formula Euler'                     : 'L - 06 - Fórmula de Euler',
    }

    print(src)

    try:
        return names[src]

    except KeyError:
        return src


#------------------------------------------------------------------------------#
def cp_pdf(src: str, dest: str) -> None:

    for pdf in src.glob("*/*.pdf"):
        dest_pdf = dest / pdf.relative_to(src)
        dest_pdf.parent.mkdir(parents=True, exist_ok=True)
        sh.copy2(pdf, dest_pdf)


#------------------------------------------------------------------------------#
def mk_page() -> None:

    print('Resetting page folders...')
    sh.rmtree(page, ignore_errors=True)
    page.mkdir()

    if add_book:
        print('Copying booklet...')
        sh.copy(book, page)

    print('Copying handouts...')
    cp_pdf(classes, page_classes)

    print('Copying exams...')
    cp_pdf(exams, page_exams)


#------------------------------------------------------------------------------#
def write_pdf_link(f, file: Path, prefix: str = ''):
    text = file.name.replace('_', ' ').replace('-', ' ').replace('.pdf', '')
    text = pdf_name(text)
    f.write(f'{prefix}[[PDF]]({file}) {text}\n')


#------------------------------------------------------------------------------#
def mk_index() -> None:
    with index.open("w", encoding="utf-8") as f:

        f.write(f"# {title}\n\n")
        f.write(datetime.now().strftime("Última atualização: %Y-%m-%d %H:%M:%S\n\n"))
        f.write(f"Materiais para a disciplina {discipline}\n\n")

        if add_book:

            f.write("\n??? Apostila\n")

            for file in sorted(page.glob("*.pdf")):
                write_pdf_link(f, file.relative_to(page), tab)

        f.write('\n??? "Apresentações das aulas"\n')

        for folder in sorted(page_classes.glob("*")):

            name = folder.name.replace('_', ' ').replace('-', ' ')
            name = folder_name(name)

            f.write(f'\n{tab}??? abstract "{name}"\n')

            for file in sorted(folder.glob("*.pdf")):
                write_pdf_link(f, file.relative_to(page), f'{tab}{tab}- ')

        f.write('\n??? "Avaliações anteriores"\n')

        for folder in sorted(page_exams.glob("*")):

            name = folder.name.replace('_', ' ').replace('-', ' ')

            f.write(f'\n{tab}??? abstract "{name}"\n')

            for file in sorted(folder.glob("*.pdf")):
                write_pdf_link(f, file.relative_to(page), f'{tab}{tab}- ')


#------------------------------------------------------------------------------#
if __name__ == '__main__':

    mk_page ()
    mk_index()

#------------------------------------------------------------------------------#
