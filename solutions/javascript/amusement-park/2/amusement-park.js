export function createVisitor(name, age, ticketId) {
  return { name, age, ticketId };
}

export function revokeTicket(visitor) {
  visitor.ticketId = null;
  return visitor;
}

export function ticketStatus(tickets, ticketId) {
  let name = tickets[ticketId];
  if (name === null) {
    return "not sold";
  } else if (name === undefined) {
    return "unknown ticket id";
  }
  return `sold to ${name}`;
}

export function simpleTicketStatus(tickets, ticketId) {
  // 如果前面的东西是null/undefined,就返回 ？？后面的
  return tickets[ticketId] ?? "invalid ticket !!!";
}

export function gtcVersion(visitor) {
  return visitor.gtc?.version;
}
