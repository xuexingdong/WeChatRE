package unk.com.tencent.mm.protocal.a;

import a.a.a.c;

public final class fo extends com.tencent.mm.ae.a
{
  private int bBa;
  private boolean bBb;
  private x byC;
  private boolean byD;

  public final void a(a.a.a.c.a parama)
  {
    parama.Y(1, this.byC.cE());
    this.byC.a(parama);
    if (this.bBb)
      parama.aa(2, this.bBa);
  }

  public final fo ah(x paramx)
  {
    this.byC = paramx;
    this.byD = true;
    return this;
  }

  public final int cE()
  {
    boolean bool = this.bBb;
    int i = 0;
    if (bool)
      i = 0 + a.a.a.a.U(2, this.bBa);
    return i + (0 + a.a.a.a.V(1, this.byC.cE()));
  }

  public final fo kd(int paramInt)
  {
    this.bBa = paramInt;
    this.bBb = true;
    return this;
  }

  public final byte[] toByteArray()
  {
    if (!this.byD)
      throw new c("Not all required fields were included (false = not included in message),  BaseRequest:" + this.byD);
    return super.toByteArray();
  }

  public final String toString()
  {
    String str1 = "" + getClass().getName() + "(";
    String str2 = str1 + "BaseRequest = " + this.byC + "   ";
    if (this.bBb)
      str2 = str2 + "OpCode = " + this.bBa + "   ";
    return str2 + ")";
  }
}

/* Location:           /home/danghvu/0day/WeChat/WeChat_4.5_dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fo
 * JD-Core Version:    0.6.2
 */