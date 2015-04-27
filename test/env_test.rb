require 'test_helper'

class MTex2MMLEnvTest < MiniTest::Test

  def setup
    @mtex = Mtex2MML::Parser.new
  end

  def test_matrix_ex_spacing
    text = '''
$$
\left\{
  \begin{matrix} 1 & 2 & 3 \\\\[40ex]
4 & 5 & 6
\end{matrix}
\right)
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "matrix_ex_spacing"))
  end

  def test_matrix_no_ex_spacing
    text = '''
$$
\left\{
  \begin{matrix} 1 & 2 & 3 \\\\
4 & 5 & 6
\end{matrix}
\right)
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "matrix_no_ex_spacing"))
  end

  def test_matrix_no_lines
    text = '''
$$
\left\{
  \begin{matrix} 1 & 2 & 3
\end{matrix}
\right)
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "matrix_no_lines"))
  end

  def test_pmatrix_ex_spacing
    text = '''
$$
\begin{pmatrix}
1 & 2 & 3 \\\\[30mu]
4 & 5 & 6 \end{pmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "pmatrix_ex_spacing"))
  end

  def test_pmatrix_no_ex_spacing
    text = '''
$$
\begin{pmatrix}
1 & 2 & 3 \\\\
4 & 5 & 6 \end{pmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "pmatrix_no_ex_spacing"))
  end

  def test_pmatrix_no_lines
    text = '''
$$
\begin{pmatrix}
1 & 2 & 3 \end{pmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "pmatrix_no_lines"))
  end

  def test_bmatrix_ex_spacing
    text = '''
$$
\begin{bmatrix}
1 & 2 & 3 \\\\[2.5in]
4 & 5 & 6 \end{bmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "bmatrix_ex_spacing"))
  end

  def test_bmatrix_no_ex_spacing
    text = '''
$$
\begin{bmatrix}
1 & 2 & 3 \\\\
4 & 5 & 6 \end{bmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "bmatrix_no_ex_spacing"))
  end

  def test_bmatrix_no_lines
    text = '''
$$
\begin{bmatrix}
4 & 5 & 6 \end{bmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "bmatrix_no_lines"))
  end

  def test_bb_matrix_ex_spacing
    text = '''
$$
\begin{Bmatrix}
1 & 2 & 3 \\\\[100cm]
4 & 5 & 6 \end{Bmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "bbmatrix_ex_spacing"))
  end

  def test_bb_matrix_no_ex_spacing
    text = '''
$$
\begin{Bmatrix}
1 & 2 & 3 \\\\
4 & 5 & 6 \end{Bmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "bbmatrix_no_ex_spacing"))
  end

  def test_bb_matrix_no_lines
    text = '''
$$
\begin{Bmatrix}
4 & 5 & 6 \end{Bmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "bbmatrix_no_lines"))
  end

  def test_vmatrix_ex_spacing
    text = '''
$$
\begin{vmatrix}
1 & 2 & 3 \\\\[1000mm]
4 & 5 & 6 \end{vmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "vmatrix_ex_spacing"))
  end

  def test_vmatrix_no_ex_spacing
    text = '''
$$
\begin{vmatrix}
1 & 2 & 3 \\\\
4 & 5 & 6 \end{vmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "vmatrix_no_ex_spacing"))
  end

  def test_vmatrix_no_lines
    text = '''
$$
\begin{vmatrix}
4 & 5 & 6 \end{vmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "vmatrix_no_lines"))
  end

  def test_V_matrix_ex_spacing
    text = '''
$$
\begin{Vmatrix}
1 & 2 & 3 \\\\[9.452pc]
4 & 5 & 6
\end{Vmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "vvmatrix_ex_spacing"))
  end

  def test_V_matrix_no_ex_spacing
    text = '''
$$
\begin{Vmatrix}
1 & 2 & 3 \\\\
4 & 5 & 6
\end{Vmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "vvmatrix_no_ex_spacing"))
  end

  def test_V_matrix_no_lines
    text = '''
$$
\begin{Vmatrix}
1 & 2 & 3
\end{Vmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "vvmatrix_no_lines"))
  end

  def test_smallmatrix_ex_spacing
    text = '''
$$
\begin{smallmatrix}
   \circ & \circ & \bullet \\\\
\hline
\circ  & \circ &\bullet \\\\[100.342832em]
\circ & \circ & \circ
 \end{smallmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "smallmatrix_ex_spacing"))
  end

  def test_smallmatrix_no_ex_spacing
    text = '''
$$
\begin{smallmatrix}
   \circ & \circ & \bullet \\\\
\circ  & \circ &\bullet \\\\
\circ & \circ & \circ
 \end{smallmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "smallmatrix_no_ex_spacing"))
  end

  def test_smallmatrix_no_lines
    text = '''
$$
\begin{smallmatrix}
   \circ & \bullet & \bullet
 \end{smallmatrix}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "smallmatrix_no_lines"))
  end

  def test_aligned_ex_spacing
    text = '''
$$
\begin{aligned}
2x - 5y &=  8 \\\\[2.49201em]
3x + 9y &=  -12
\end{aligned}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "aligned_ex_spacing"))
  end

  def test_aligned_no_ex_spacing
    text = '''
$$
\begin{aligned}
2x - 5y &=  8 \\\\
3x + 9y &=  -12
\end{aligned}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "aligned_no_ex_spacing"))
  end

  def test_aligned_no_lines
    text = '''
$$
\begin{aligned}
3x + 9y &=  -12
\end{aligned}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "aligned_no_lines"))
  end

  def test_gathered_ex_spacing
    text = '''
$$
\begin{gathered}
2x - 5y =  8 \\\\[2pt]
3x^2 + 9y =  3a + c
\end{gathered}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "gathered_ex_spacing"))
  end

  def test_gathered_no_ex_spacing
    text = '''
$$
\begin{gathered}
2x - 5y =  8 \\\\
3x^2 + 9y =  3a + c
\end{gathered}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "gathered_no_ex_spacing"))
  end

  def test_gathered_no_lines
    text = '''
$$
\begin{gathered}
3x^2 + 9y =  3a + c
\end{gathered}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "gathered_no_lines"))
  end

  def test_split_ex_spacing
    text = '''
$$
\begin{split}
A & = \frac{\pi r^2}{2} \\\\[22.2ex]
 & = \frac{1}{2} \pi r^2
\end{split}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "split_ex_spacing"))
  end

  def test_split_no_ex_spacing
    text = '''
$$
\begin{split}
A & = \frac{\pi r^2}{2} \\\\
 & = \frac{1}{2} \pi r^2
\end{split}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "split_no_ex_spacing"))
  end

  def test_split_no_lines
    text = '''
$$
\begin{split}
A & = \frac{\pi r^2}{2}
\end{split}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "split_no_lines"))
  end

  def test_spaces_after_rowsep
    text = '''
$$
f(n) =
\begin{cases}
\frac{n}{2},  & \text{if n is even} \\\\ [2ex]
3n+1, & \text{if n is odd}
\end{cases}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "spaces_after_rowsep"))
  end

  def test_cases_ex_spacing
    text = '''
$$
f(n) =
\begin{cases}
\frac{n}{2},  & \text{if n is even} \\\\[20ex]
3n+1, & \text{if n is odd}
\end{cases}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "cases_ex_spacing"))
  end

  def test_cases_no_ex_spacing
    text = '''
$$
f(n) =
\begin{cases}
\frac{n}{2},  & \text{if n is even} \\\\
3n+1, & \text{if n is odd}
\end{cases}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "cases_no_ex_spacing"))
  end

  def test_cases_no_lines
    text = '''
$$
f(n) =
\begin{cases}
\frac{n}{2},  & \text{if n is even}
\end{cases}
$$
'''

    assert_equal(@mtex.filter(text), fixture_file("env", "cases_no_lines"))
  end
end
