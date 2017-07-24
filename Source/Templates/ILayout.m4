namespace _Namespace {

// This file was GCode generated. Feel free to modify the result.
// .NET Core OK!

using System.IO;
using System.Text;

// Serialize this class.
using TClass = _TClass;

// The default serialization format for TClass.
using TFormat = _TFormat;

//
// Extend the _TClass object to support ILayout<_TClass>. ILayout is a
// of serializing objects to/from strings,StringBuilder and Stream.
//
// Make sure and mark _TClass partial.
public sealed partial class _TClass : ILayout<TClass>
{
    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A string that contains the text representation of the
    /// _TClass. The string is interpreted using the specified format
    /// object.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryRead(string s, IReadLayoutFormat<TClass> format, out TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryRead(s, format, out result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A string that contains the text representation of the
    /// _TClass. The string is interpreted using the default _TFormat
    /// object.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will
    /// be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryRead(string s, out TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryRead(s, out result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A StringBuilder that contains the text representation
    /// of the _TClass. The string is interpreted using the specified format
    /// object.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryRead(StringBuilder s, IReadLayoutFormat<TClass> format, out TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryRead(s, format, out result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A StringBuilder that contains the text representation
    /// of the _TClass. The string is interpreted using the default _TFormat
    /// object.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryRead(StringBuilder s, out TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryRead(s, out result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A Stream that contains the text representation
    /// of the _TClass. The string is interpreted using the specified format
    /// object.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryRead(Stream s, IReadLayoutFormat<TClass> format, out TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryRead(s, format, out result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A Stream that contains the text representation
    /// of the _TClass. The string is interpreted using the default _TFormat
    /// object.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryRead(Stream s, out TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryRead(s, out result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A Stream that contains the text representation
    /// of the _TClass. The string is interpreted using the specified format
    /// object.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or undefined if the conversion failed. This parameter is passed
    /// initialized; any value originally supplied in result may be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryReadInto(Stream s, IReadLayoutFormat<TClass> format, TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryReadInto(s, format, result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A Stream that contains the text representation
    /// of the _TClass. The string is interpreted using the default _TFormat
    /// object.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or undefined if the conversion failed. This parameter is passed
    /// initialized; any value originally supplied in result may be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryReadInto(Stream s, TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryReadInto(s, result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A StringBuilder that contains the text representation
    /// of the _TClass. The string is interpreted using the default _TFormat
    /// object.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryReadInto(StringBuilder s, IReadLayoutFormat<TClass> format, TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryReadInto(s, format, result);
    }

    /// <summary>
    /// Tries to convert the string representation of a _TClass to its _TClass
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A StringBuilder that contains the text representation
    /// of the _TClass. The string is interpreted using the default _TFormat
    /// object.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryReadInto(StringBuilder s, TClass result)
    {
        var fmt = new TFormat();
        return fmt.TryReadInto(s, result);
    }

    /// <summary>
    /// Tries to convert the specified _TClass object to its string
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A _TClass to convert to a string. The string
    /// format is defined by the specified format.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the _TClass s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter is passed
    /// initialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, IWriteLayoutFormat<TClass> format, Stream dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, format, dst);
    }

    /// <summary>
    /// Tries to convert the specified _TClass object to its string
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A _TClass to convert to a string. The string
    /// format is defined by the default _TFormat object.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the _TClass s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter is passed
    /// initialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, Stream dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, dst);
    }

    /// <summary>
    /// Tries to convert the specified _TClass object to its string
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A _TClass to convert to a string. The string
    /// format is defined by the specified format.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the _TClass s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter is passed
    /// initialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, IWriteLayoutFormat<TClass> format, StringBuilder dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, format, dst);
    }

    /// <summary>
    /// Tries to convert the specified _TClass object to its string
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A _TClass to convert to a string. The string
    /// format is defined by the default _TFormat object.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the _TClass s if the conversion
    /// succeeded, or empty if the conversion failed. This parameter is passed
    /// initialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, StringBuilder dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, dst);
    }

    /// <summary>
    /// Tries to convert the specified _TClass object to its string
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A _TClass to convert to a string. The string
    /// format is defined by the specified format.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the _TClass s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, IWriteLayoutFormat<TClass> format, out string dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, format, out dst);
    }

    /// <summary>
    /// Tries to convert the specified _TClass object to its string
    /// equivalent, and returns a value that indicates whether the conversion
    /// succeeded.
    /// </summary>
    /// <param name="s">A _TClass to convert to a string. The string
    /// format is defined by the default _TFormat object.</param>
    /// <param name="dst">When this method returns, contains the string
    /// value equivalent to the _TClass s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public bool TryWrite(TClass s, out string dst)
    {
        var fmt = new TFormat();
        return fmt.TryWrite(s, out dst);
    }
}} // class:namespace
