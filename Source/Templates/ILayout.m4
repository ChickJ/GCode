namespace _Namespace {

using System.IO;
using System.Text;

using TClass       = _TClass;
using TFormat      = _TClass()._TFormat();
using TReadLayout  = System.IO.IReadLayoutFormat<_TClass>;
using TWriteLayout = System.IO.IWriteLayoutFormat<_TClass>;

/// <remarks>
/// Extend the <see cref="_TClass()"/> object to support <see cref="T:ILayout" />.
/// <see cref="T:ILayout" /> is a way to serialize objects to/from
/// <see cref="System.String" />(s), <see cref="StringBuilder" />(s) and
/// <see cref="Stream" />(s)
/// </remarks>
partial class _TClass : ILayout<_TClass>
{
    /// <summary>
    /// Convert a string to its <see cref="_TClass()"/> object equivalent.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="Stream" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <returns>
    /// A new <see cref="_TClass()" /> object equivalent to the string specified
    /// in <paramref name="src" />.
    /// </returns>
    public static TClass Parse(Stream src)
    {
        return Parse(src, new TFormat());
    }

    /// <summary>
    /// Convert a string to its <see cref="_TClass()"/> object equivalent.
    /// </summary>
    ///
    /// <param name="src">
    /// A Stream containing the text to convert.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <returns>
    /// A new <see cref="_TClass()" /> instance equivalent to the string
    /// specified in <paramref name="src" />.
    /// </returns>
    public static TClass Parse(Stream src, TReadLayout fmt)
    {
        if (null == fmt)
            fmt = new TFormat();

        var result = new TClass();
        var succeeded = fmt.TryReadInto(src, result);
        return succeeded ? result : null;
    }

    /// <summary>
    /// Convert a string to its <see cref="_TClass()"/> object equivalent.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="StringBuilder" /> containing the text to convert. The text
    /// is interpreted with the default <see cref="_TClass()._TFormat()" />
    /// layout format.
    /// </param>
    ///
    /// <returns>
    /// A new <see cref="_TClass()" /> instance equivalent to the string
    /// specified in <paramref name="src" />.
    /// </returns>
    public static TClass Parse(string src)
    {
        return Parse(src, new TFormat());
    }

    /// <summary>
    /// Convert a string to its <see cref="_TClass()"/> object equivalent.
    /// </summary>
    ///
    /// <param name="src">
    /// A Stream containing the text to convert.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <returns>
    /// A new <see cref="_TClass()" /> instance equivalent to the string
    /// specified in <paramref name="src" />.
    /// </returns>
    public static TClass Parse(string src, TReadLayout fmt)
    {
        if (null == fmt)
            fmt = new TFormat();

        var result = new TClass();
        var succeeded = fmt.TryReadInto(new StringBuilder(src), result);
        return succeeded ? result : null;
    }

    /// <summary>
    /// Convert a string to its <see cref="_TClass()"/> object equivalent.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="StringBuilder" /> containing the text to convert. The text
    /// is interpreted with the default <see cref="_TClass()._TFormat()" />
    /// layout format.
    /// </param>
    ///
    /// <returns>
    /// A new <see cref="_TClass()" /> instance equivalent to the string
    /// specified in <paramref name="src" />.
    /// </returns>
    public static TClass Parse(StringBuilder src)
    {
        return Parse(src, new TFormat());
    }

    /// <summary>
    /// Convert a string to its <see cref="_TClass()"/> object equivalent.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="StringBuilder" /> containing the text to convert.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <returns>
    /// A new <see cref="_TClass()" /> instance equivalent to the string
    /// specified in <paramref name="src" />.
    /// </returns>
    public static TClass Parse(StringBuilder src, TReadLayout fmt)
    {
        if (null == fmt)
            fmt = new TFormat();

        var result = new TClass();
        var succeeded = fmt.TryReadInto(src, result);
        return succeeded ? result : null;
    }

    /// <summary>
    /// Converts the value of the specified <see cref="_TClass()"/> to its
    /// equivalent string representation using the default formatting
    /// information.
    /// </summary>
    ///
    /// <param name="value">The  <see cref="_TClass()"/> to convert.</param>
    ///
    /// <returns>
    /// The string representation of <paramref name="value"/> or null if
    /// the conversion failed.
    /// </returns>
    public static string ToString(TClass value)
    {
        return ToString(value, new TFormat());
    }

    /// <summary>
    /// Converts the value of the specified <see cref="_TClass()"/> to its
    /// equivalent string representation using the default formatting
    /// information.
    /// </summary>
    ///
    /// <param name="value">The <see cref="_TClass()"/> to convert.</param>
    /// <param name="fmt">
    /// An object that supplies formatting information for <see cref="_TClass()"/>.
    /// Use the default <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <returns>
    /// The string representation of <paramref name="value"/> or null if
    /// the conversion failed.
    /// </returns>
    public static string ToString(TClass value, TFormat fmt)
    {
        string result = null;
        TryConvert(value, fmt, out result);
        return result;
    }

    /// <summary>
    /// Try to convert the <see cref="_TClass()"/> instance to a
    /// <see cref="string" /> and return a value that indicates if the
    /// conversion succeeded.
    /// </summary>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> if the conversion succeeded, or null if the
    /// conversion failed.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryConvert(out string result)
    {
        return TryConvert(new TFormat(), out result);
    }

    /// <summary>
    /// Try to convert the <see cref="_TClass()"/> instance to a
    /// <see cref="StringBuilder" /> and return a value that indicates if the
    /// conversion succeeded.
    /// </summary>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> if the conversion succeeded, or null if the
    /// conversion failed.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryConvert(out StringBuilder result)
    {
        return TryConvert(new TFormat(), out result);
    }

    /// <summary>
    /// Try to convert the <see cref="_TClass()"/> instance to a
    /// <see cref="string" /> and return a value that indicates if the
    /// conversion succeeded.
    /// </summary>
    ///
    /// <param name="src">
    /// The <see cref="_TClass()"/> instance to convert. Written in the default
    /// <see cref="_TClass()._TFormat()" /> format.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryConvert(TClass src, out string result)
    {
        return TryConvert(src, new TFormat(), out result);
    }

    /// <summary>
    /// Try to convert the <see cref="_TClass()"/> instance to a
    /// <see cref="StringBuilder" /> and return a value that indicates if the
    /// conversion succeeded.
    /// </summary>
    ///
    /// <param name="src">
    /// The <see cref="_TClass()"/> instance to convert. Written in the default
    /// <see cref="_TClass()._TFormat()" /> format.
    /// </param>

    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryConvert(TClass src, out StringBuilder result)
    {
        return TryConvert(src, new TFormat(), out result);
    }

    /// <summary>
    /// Try to convert the <see cref="_TClass()"/> instance to a
    /// <see cref="string" /> and return a value that indicates if the
    /// conversion succeeded.
    /// </summary>
    ///
    /// <param name="src">
    /// The <see cref="_TClass()"/> instance to convert. Written in the default
    /// <see cref="_TClass()._TFormat()" /> format.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryConvert(TClass src, TWriteLayout fmt, out string result)
    {
        var dst = new StringBuilder();
        var succeeded = TryWrite(src, fmt, dst);
        result = (succeeded) ? dst.ToString() : null;
        return succeeded;
    }

    /// <summary>
    /// Try to convert the <see cref="_TClass()"/> instance to a
    /// <see cref="StringBuilder" /> and return a value that indicates if the
    /// conversion succeeded.
    /// </summary>
    ///
    /// <param name="src">
    /// The <see cref="_TClass()"/> instance to convert. Written in the default
    /// <see cref="_TClass()._TFormat()" /> format.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryConvert(TClass src, TWriteLayout fmt, out StringBuilder result)
    {
        result = new StringBuilder();
        return TryWrite(src, fmt, result);
    }

    /// <summary>
    /// Try to converting this <see cref="_TClass()"/> instance to a
    /// <see cref="string" /> and return a value that indicates if the
    /// conversion succeeded.
    /// </summary>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryConvert(TFormat fmt, out string result)
    {
        return TryConvert(this, fmt, out result);
    }

    /// <summary>
    /// Try to converting this <see cref="_TClass()"/> instance to a
    /// <see cref="StringBuilder" /> and return a value that indicates if the
    /// conversion succeeded.
    /// </summary>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryConvert(TFormat fmt, out StringBuilder result)
    {
        result = new StringBuilder();
        return TryWrite(this, fmt, result);
    }

    /// <summary>
    /// Convert the string representation of a <see cref="_TClass()"/> to its
    /// <see cref="_TClass()"/> equivalent. The return value indicates if the
    /// conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="Stream" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryParse(Stream src)
    {
        return TryParse(src, new TFormat());
    }

    /// <summary>
    /// Convert the string representation of a <see cref="_TClass()"/> to its
    /// <see cref="_TClass()"/> equivalent. The return value indicates if the
    /// conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="Stream" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryParse(Stream src, out TClass result)
    {
        return TryParse(src, new TFormat(), out result);
    }

    /// <summary>
    /// Convert the string representation of a <see cref="_TClass()"/> to its
    /// <see cref="_TClass()"/> equivalent. The return value indicates if the
    /// conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="Stream" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryParse(Stream src, TReadLayout fmt)
    {
        if (null == fmt)
            fmt = new TFormat();

        return fmt.TryReadInto(src, this);
    }

    /// <summary>
    /// Convert the string representation of a <see cref="_TClass()"/> to its
    /// <see cref="_TClass()"/> equivalent. The return value indicates if the
    /// conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="Stream" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryParse(Stream src, TReadLayout fmt, out TClass result)
    {
        if (null == fmt)
            fmt = new TFormat();

        result = new TClass();
        return fmt.TryReadInto(src, result);
    }

    /// <summary>
    /// Convert the string representation of a <see cref="_TClass()"/> to its
    /// <see cref="_TClass()"/> equivalent. The return value indicates if the
    /// conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="string" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryParse(string src)
    {
        return TryParse(src, new TFormat());
    }

    /// <summary>
    /// Convert the string representation of a <see cref="_TClass()"/> to its
    /// <see cref="_TClass()"/> equivalent. The return value indicates if the
    /// conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="string" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryParse(string src, out TClass result)
    {
        return TryParse(src, new TFormat(), out result);
    }

    /// <summary>
    /// Try converting the string representation of this <see cref="_TClass()"/>
    /// instance to its <see cref="_TClass()"/> equivalent. The return value
    /// indicates if the conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="string" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryParse(string src, TReadLayout fmt)
    {
        if (null == fmt)
            fmt = new TFormat();

        return fmt.TryReadInto(new StringBuilder(src), this);
    }

    /// <summary>
    /// Try converting the string representation of an <see cref="_TClass()"/>
    /// to its <see cref="_TClass()"/> equivalent. The return value
    /// indicates if the conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="string" /> containing the text to convert.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryParse(string src, TReadLayout fmt, out TClass result)
    {
        if (null == fmt)
            fmt = new TFormat();

        result = new TClass();
        return fmt.TryReadInto(new StringBuilder(src), result);
    }

    /// <summary>
    /// Convert the string representation of a <see cref="_TClass()"/> to its
    /// <see cref="_TClass()"/> equivalent. The return value indicates if the
    /// conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="StringBuilder" /> containing the text to convert. The text
    /// is interpreted using the default <see cref="_TClass()._TFormat()" />
    /// layout format.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryParse(StringBuilder src)
    {
        return TryParse(src, new TFormat());
    }

    /// <summary>
    /// Convert the string representation of a <see cref="_TClass()"/> to its
    /// <see cref="_TClass()"/> equivalent. The return value indicates if the
    /// conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="StringBuilder" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryParse(StringBuilder src, out TClass result)
    {
        return TryParse(src, new TFormat(), out result);
    }

    /// <summary>
    /// Try converting the string representation of this <see cref="_TClass()"/>
    /// instance to its <see cref="_TClass()"/> equivalent. The return value
    /// indicates if the conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="StringBuilder" /> containing the text to convert. The text is
    /// interpreted using the default <see cref="_TClass()._TFormat()" /> layout
    /// format.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool TryParse(StringBuilder src, TReadLayout fmt)
    {
        if (null == fmt)
            fmt = new TFormat();

        return fmt.TryReadInto(src, this);
    }

    /// <summary>
    /// Try converting the string representation of an <see cref="_TClass()"/>
    /// to its <see cref="_TClass()"/> equivalent. The return value
    /// indicates if the conversion succeeded or failed.
    /// </summary>
    ///
    /// <param name="src">
    /// A <see cref="StringBuilder" /> containing the text to convert.
    /// </param>
    ///
    /// <param name="fmt">
    /// A formatting object for <see cref="_TClass()"/>. Uses the default
    /// <see cref="_TClass()._TFormat()" /> format if null.
    /// </param>
    ///
    /// <param name="result">
    /// When this method returns, contains the string value equivalent to the
    /// <see cref="_TClass()"/> on success, or null on conversion failure.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryParse(StringBuilder src, TReadLayout fmt, out TClass result)
    {
        if (null == fmt)
            fmt = new TFormat();

        result = new TClass();
        return fmt.TryReadInto(src, result);
    }

    /// <summary>
    /// Try converting <paramref name="src"/> to its string
    /// equivalent using the default <see cref="_TClass()._TFormat()" />
    /// layout format, and return a value indicating conversion success.
    /// </summary>
    ///
    /// <param name="src">
    /// The <see cref="_TClass()"/> to convert.
    /// </param>
    ///
    /// <param name="destination">
    /// Write <paramref name="src"/> to this <see cref="Stream"/>. When this
    /// method returns, contains the string value equivalent of
    /// <paramref name="src"/> if successful, otherwise undefined.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryWrite(TClass src, Stream destination)
    {
        return TryWrite(src, new TFormat(), destination);
    }

    /// <summary>
    /// Try converting <paramref name="src"/> to its string
    /// equivalent using the default <see cref="_TClass()._TFormat()" />
    /// layout format, and return a value indicating conversion success.
    /// </summary>
    ///
    /// <param name="src">
    /// The <see cref="_TClass()"/> to convert.
    /// </param>
    ///
    /// <param name="destination">
    /// Write <paramref name="src"/> to this <see cref="StringBuilder"/>. When
    /// this method returns, contains the string value equivalent of
    /// <paramref name="src"/> if successful, otherwise empty.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryWrite(TClass src, StringBuilder destination)
    {
        return TryWrite(src, new TFormat(), destination);
    }

    /// <summary>
    /// Try converting <paramref name="src"/> to its string equivalent using
    /// the specified layout format specified by <paramref name="fmt" /> and
    /// return a value indicating success.
    /// </summary>
    ///
    /// <param name="src">
    /// The <see cref="_TClass()"/> to convert.
    /// </param>
    ///
    /// <param name="fmt">
    /// An object that supplies formatting information for
    /// <see cref="_TClass()"/>. Use the default <see cref="_TClass()._TFormat()" />
    /// format if null.
    /// </param>
    ///
    /// <param name="destination">On success contains the string value
    /// equivalent to this <see cref="_TClass()"/> instance; otherwise undefined.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryWrite(TClass src, TWriteLayout fmt, Stream destination)
    {
        if (null == fmt)
            fmt = new TFormat();

        return fmt.TryWrite(src, destination);
    }

    /// <summary>
    /// Try converting <paramref name="src"/> to its string equivalent using
    /// the specified layout format specified by <paramref name="fmt" /> and
    /// return a value indicating success.
    /// </summary>
    ///
    /// <param name="src">
    /// The <see cref="_TClass()"/> to convert.
    /// </param>
    ///
    /// <param name="fmt">
    /// An object that supplies formatting information for
    /// <see cref="_TClass()"/>. Use the default <see cref="_TClass()._TFormat()" />
    /// format if null.
    /// </param>
    ///
    /// <param name="destination">On success contains the string value
    /// equivalent to this <see cref="_TClass()"/> instance; otherwise empty.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public static bool TryWrite(TClass src, TWriteLayout fmt, StringBuilder destination)
    {
        if (null == fmt)
            fmt = new TFormat();

        return fmt.TryWrite(src, destination);
    }

    /// <summary>
    /// Convert this <see cref="_TClass()"/> object to its string
    /// equivalent using the default <see cref="_TClass()._TFormat()"/> layout
    /// format, and return a value indicating conversion success.
    /// </summary>
    ///
    /// <param name="destination">
    /// When this method returns, contains the string value equivalent of
    /// <see cref="_TClass()"/> if the conversion succeeded, or undefined
    /// if the conversion failed.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool Write(Stream destination)
    {
        return Write(new TFormat(), destination);
    }

    /// <summary>
    /// Convert this <see cref="_TClass()"/> object to its string
    /// equivalent using the default <see cref="_TClass()._TFormat()"/> layout
    /// format, and return a value indicating conversion success.
    /// </summary>
    ///
    /// <param name="destination">
    /// When this method returns, contains the string value equivalent of
    /// <see cref="_TClass()"/> if the conversion succeeded, or empty
    /// if the conversion failed.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool Write(StringBuilder destination)
    {
        return Write(new TFormat(), destination);
    }

    /// <summary>
    /// Write this <see cref="_TClass()"/> instance to the specified
    /// <see cref="Stream" /> using the specified format <paramref name="fmt" />
    /// and return a value that indicating success.
    /// </summary>
    ///
    /// <param name="fmt">An object that supplies formatting information for
    /// <see cref="_TClass()"/>. Use the default <see cref="_TClass()._TFormat()" />
    /// format if null.
    /// </param>
    ///
    /// <param name="destination">On success contains the string value
    /// equivalent of <see cref="_TClass()"/>. The <see cref="Stream" /> is left
    /// in an undefined state if the method fails.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool Write(TFormat fmt, Stream destination)
    {
        if (null == fmt)
            fmt = new TFormat();

        return fmt.TryWrite(this, fmt, destination);
    }

    /// <summary>
    /// Write this <see cref="_TClass()"/> to the specified <see cref="Stream" />
    /// using the specified format <paramref name="fmt" />
    /// and return a value indicating success.
    /// </summary>
    ///
    /// <param name="fmt">An object that supplies formatting information for
    /// <see cref="_TClass()"/>. Use the default <see cref="_TClass()._TFormat()" />
    /// format if null.
    /// </param>
    ///
    /// <param name="destination">
    /// When this method returns, contains the string value equivalent of
    /// <see cref="_TClass()"/> if the conversion succeeded, or empty
    /// if the conversion failed.
    /// </param>
    ///
    /// <returns>
    /// true if the conversion succeeded; otherwise, false.
    /// </returns>
    public bool Write(TFormat fmt, StringBuilder destination)
    {
        if (null == fmt)
            fmt = new TFormat();

        return fmt.TryWrite(this, fmt, destination);
    }
}} // class:namespace

#if COMPILE_UNIT_TESTS
namespace SE.Transfers.Xml.Test.DataRequest2 {

using Xunit;
using TClass = _Namespace()._TClass();

/// <summary>
/// Represents unit tests for the specified method.
/// </summary>
public sealed class ToString
{
    /// <summary>
    /// Ensure (x.ToString() == y.ToString() == x.ToString())
    /// </summary>
    [Fact] public void CanRoundTrip()
    {
        var x = new TClass();
        var expected = TClass.ToString(x);

        TClass y = null;
        Assert.True(TClass.TryParse(expected, out y));
        var actual = TClass.ToString(y);

        Assert.Equal(expected, actual);
    }

    /// <summary>
    /// Ensure the default format is configured correctly.
    /// </summary>
    [Fact] public void NullAndDefaultFormatsAreEqual()
    {
        var x = new TClass();
        var expected = TClass.ToString(x);
        var actual = TClass.ToString(x, null);
        Assert.Equal(expected, actual);
    }
} // class

} // namespace
#endif // CompileUnitTests
